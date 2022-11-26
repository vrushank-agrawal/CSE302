from typing import List
import json
import ssagen
import cfg
from tac import *
from copy import deepcopy

# ------------------------------------------------------------------------------#
# Class to handle Dataflow Optimization using SSA form
# ------------------------------------------------------------------------------#

class DataflowOpt:

    def __init__(self, tac: List[Gvar or Proc]) -> None:
        self.__original_tac: List[Gvar or Proc] = tac
        self.__optimized_tac: List[Gvar or Proc] = None
        self.__temp_proc_cfg: cfg.CFG = None
        self.__optimize_tac()

    # ------------------------------------------------------------------------------#
    # Helper functions

    def get_optimized_tac(self) -> List:
        """ Returns the dataflow optimized tac """
        return self.__optimized_tac

    def __optimize_proc(self, proc: Proc) -> Proc:
        """ Optimize the proc by performing DSE and GCP """
        self.__temp_proc_cfg = cfg.infer(proc)
        self.__run_DSE()
        ssagen.crude_ssagen(proc, self.__temp_proc_cfg)
        self.__GCP()
        cfg.linearize(proc, self.__temp_proc_cfg)

    def __optimize_tac(self) -> None:
        """ Create optimized tac instructions """
        cfg = list()
        for decl in self.__original_tac:
            if isinstance(decl, Proc):
                self.__optimize_proc(decl)
            cfg.append(decl)
        self.__optimized_tac = cfg

    # ------------------------------------------------------------------------------#
    # Dataflow Optimizations

    def __run_DSE(self) -> None:
        """ Runs DSE multiple times until CFG is unchanged """
        # run the code first time
        re_run = self.__DSE()
        while re_run:   # run the code until static form
            re_run = self.__DSE()

    def __DSE(self) -> bool:
        """ Perform DSE on the current temp_proc_cfg using liveness
            and return true if the instructions updated """
        is_cfg_modified = False
        live_in = dict()
        live_out = dict()
        cfg.recompute_liveness(self.__temp_proc_cfg, live_in, live_out)

        updated_blocks = list()
        for block_lab, block in self.__temp_proc_cfg._blockmap.items():
            updated_instr = list()
            for instr in block.body:
                if instr.opcode not in ["div", "mod", "call"]:
                    if instr.dest and instr.dest.startswith('%'):
                        if instr.dest not in live_out[instr]:
                            is_cfg_modified = True
                            continue
                updated_instr.append(instr)
            updated_blocks.append(cfg.Block(block_lab, updated_instr, block.jumps))

        # only update the CFG if it is modified        
        if is_cfg_modified:
            self.__temp_proc_cfg = cfg.CFG(self.__temp_proc_cfg.proc_name, 
                                           self.__temp_proc_cfg.lab_entry,
                                           updated_blocks)                            

        return is_cfg_modified

    def __GCP(self) -> None:
        """ Perform GCP on the current temp_proc_cfg using SSA """
        cfg_copy = deepcopy(self.__temp_proc_cfg)
        cfg_instr = cfg_copy.instrs()
        
        # iterate through all CFG instructions
        for instr in cfg_instr:
            # target every copy instr
            if instr.opcode == "copy":
                old_temp = instr.dest
                new_temp = instr.arg1
                updated_blocks = list()

                # iterate through all blocks
                for block in self.__temp_proc_cfg._blockmap.values():
                    updated_instr = list()                    

                    # iterate through all block instr
                    for block_instr in block.body:

                        # rename all phi temporaries
                        if instr.opcode == "phi":
                            new_temp_map = dict()
                            for lab, temp in block_instr.arg1.items():
                                new_temp_map[lab] = temp if temp != old_temp else new_temp
                            # replace all old dests to new ones
                            dest = new_temp if block_instr.dest == old_temp else block_instr.dest
                            updated_instr.append(Instr(dest, instr.opcode, [new_temp_map]))

                        # skip copy instr and change temp name in instructions not modifying stuff
                        elif instr.opcode != "copy" or block_instr.arg1 != new_temp or block_instr.dest != old_temp:
                            dest = new_temp if block_instr.dest == old_temp else block_instr.dest
                            args = [new_temp if block_instr.arg1 == old_temp else block_instr.arg1]
                            args.append(new_temp if block_instr.arg2 == old_temp else block_instr.arg2)
                            updated_instr.append(Instr(dest, block_instr.opcode, args))                

                    updated_blocks.append(cfg.Block(block.label, updated_instr, block.jumps))

                # update the CFG after every copy instr evaluated
                self.__temp_proc_cfg = cfg.CFG(self.__temp_proc_cfg.proc_name,
                                        self.__temp_proc_cfg.lab_entry,
                                        updated_blocks)

# ------------------------------------------------------------------------------#
# Main function handlers
# ------------------------------------------------------------------------------#

def execute_tac(tac: list) -> None:
    """ Executes the tac instructions """
    gvars, procs = dict(), dict()
    for decl in tac:
        if isinstance(decl, Gvar):
            gvars[decl.name] = decl
        else:
            procs[decl.name] = decl
    execute(gvars, procs, '@main', [])

import sys, argparse

if __name__ == "__main__":

    parse = argparse.ArgumentParser(description='Dataflow Optimizations')
    parse.add_argument('filename', metavar="FILE", type=str, nargs=1)
    parse.add_argument('-o', dest='output', type=str,
                        help='Write output to this file')
    args = parse.parse_args(sys.argv[1:])
    print(args)
    filename = args.filename[0]

    tac = load_tac(filename)
    d_opt = DataflowOpt(tac)

    opt_tac = d_opt.get_optimized_tac()

    if args.output:
        with open(args.output, 'w') as fp:
            json.dump([gdecl.js_obj for gdecl in opt_tac], fp)
    else:
        execute_tac(opt_tac)

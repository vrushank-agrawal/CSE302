from typing import List
import json
from ssagen import *
from cfg import *
from tac import *

def execute_tac(tac: json) -> None:
    """ Executes the tac program """
    gvars, procs = dict(), dict()
    for decl in tac.load_tac('example.tac.json'):
        if isinstance(decl, Gvar): gvars[decl.name] = decl
        else: procs[decl.name] = decl
    tac.execute(gvars, procs, '@main', [])


def create_cfg(tac: json) -> List(json):
    """ Creates and return a cfg from the tac """
    cfg_proc = list()
    for proc in tac:
        if "proc" in proc:
            cfg_proc.append(cfg.infer(tac))

    return cfg_proc



import sys, argparse

if __name__ == "__main__":

    parse = argparse.ArgumentParser(description='Dataflow Optimizations')
    parse.add_argument('filename', metavar="FILE", type=str, nargs=1)

    args = parse.parse_args(sys.argv[1:])
    filename = args[0]
    
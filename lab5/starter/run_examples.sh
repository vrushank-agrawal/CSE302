# shell script to test all examples

# # test on all files
for file in $(find examples -name "*.tac.json"); do
    echo $file 
    python3 tac_dfopt.py $file -o $file."updated"
    echo -e '\n'
    exit
done

# run all executables
# for file in $(find examples -name "*.exe"); do
#     echo $file 
#     $file
#     echo -e '\n'
# done

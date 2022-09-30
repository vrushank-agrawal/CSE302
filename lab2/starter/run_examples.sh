# shell script to test all examples

# test tmm on all files
# for file in $(find examples -name "*.bx"); do
#     echo $file 
#     python3 bx2tac.py --tmm $file
# done

# # run all tmm executables
# for file in $(find examples -name "*.exe"); do
#     echo $file 
#     $file
# done

# test bmm on all files
# for file in $(find examples -name "*.bx"); do
#     echo $file 
#     python3 bx2tac.py --bmm $file
# done

# # run all bmm executables
# for file in $(find examples -name "*.exe"); do
#     echo $file 
#     $file
# done

# # test all error files
for file in $(find regression -name "*.bx"); do
    echo $file 
    python3 bx2tac.py --bmm $file
done

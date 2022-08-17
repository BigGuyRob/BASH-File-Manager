Generate a set of test text files by running addLines.sh, if you have your own text files skip this step.

This will create five txt files with names file#.txt 1-5, with 3 lines each that just say the final name and line number in the directory where the script is run.

Next, run manFiles.sh [arguments are an amount of file names with file extension]

./manFiles.sh file1.txt…. My file.txt 

The program will check for valid file input and creates the result file - "tempFile.txt" if it does not already exist
tempFile.txt will be created if it does not already exist containing the contents of each file and the total number of lines read from the files.

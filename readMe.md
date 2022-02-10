Read me
In order to generate a set of test text files run ./addLines.sh, if you have your own text files skip this step
This will create five txt files with names file#.txt 1-5, with 3 lines each that just say the final name and line number in the directory where the script is run.
Next run ./manFiles.sh [arguments are an amount of file names with file extension]
./manFiles.sh file1.txt…. My file.txt 
The program will check if it is a valid file.
If it is, it will concatenate each file to a temporary file tempFile.txt
Temporary file is OVERWRITTEN if the program is ran again, or after each use, so cp the contents of the temp file to another file, or the file itself to another directory in order to secure the data
tempFile.txt will be created if it does not already exist

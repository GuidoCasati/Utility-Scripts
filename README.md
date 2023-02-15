# Scripts
Useful scripts for a development environment

## Git Stash Dumper Script
This script allows you to dump the contents of each git stash in your local repository onto the same file. The script will create a file called git_stash_dump.txt in the same directory as the script and append the contents of each stash to this file.

### Usage
1. Save the script to your local repository by copying the code into a file called git_stash_dump.sh.
2. Open a terminal window and navigate to the directory where the script is saved.
3. Make the script executable by running the following command `chmod +x git_stash_dumper.sh`
4. Run the script by executing the following command: `./git_stash_dumper.sh`

The script will generate a file called git_stash_dump.txt in the same directory as the script. The contents of each stash will be appended to this file, with each stash labeled by its index.

### Notes
* The script uses the git stash show command to dump the contents of each stash to the output file. If you have any binary files or large diffs in your stashes, the output file may become very large and difficult to read.
* If you want to modify the output file name or location, you can edit the output_file variable in the script.
* If you want to use the script in a different directory, you will need to copy the script to that directory or modify the script to use an absolute path to the output file.

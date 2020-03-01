# Command line Challenge
9 first task : 
* print hello world : echo "hello world"
* print current working directory : pwd
* list files : ls
* print file contents : cat file
* print last line of file : tail -n5 file
* find a string in a file : grep "GET" file
* search for files in the current working directory : grep 500 -l *
* search for files by extension : find -name "access.*"
* search for strin 500 in file access.log: find . -name "access.log*" -type f -exec grep -l '500' {} \;
* extract ip addresses : find . -name "access.log*" -type f -exec cut -d' ' -f1 {} \;

Part 2:

* delete files : rm -R *.doc
* count files : find -type f | wc -w
* simple sort : sort file
* count string in line : grep -c "GET" access.log
* split text file : cat split-me.txt | cut -d";" -f1
* print number sequences : echo {1..100}
* remove file with extension : rm -R /*
* replace text from file : sed -i cha **/*.txt 
* sum all numbers : S=0; while read -r line; do s=$((s + line)); done < sum.me.txt; echo $s 
* just the files : find ./ -type f -printf '%f\n'

Part 3:
* remove extension from file : find . -name '*.*' -exec sh -c 'mv "$0" "${0%.*}"' {} \;
* replace space in filenames : ls | tr ' ' '.'
* dirs containing files with extension : ls **/*.tf | xargs dirname | uniq
* files startting with a number : ls -RF | grep ^[0-9] | grep -v / 
* print nth line : cat faces.txt | head -n25 | tail -n1
*  

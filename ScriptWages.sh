# Exercise 5 Shell Script 

# Usage: bash ScriptWages.sh 

cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "female" | sort -n -k 2 > Part1.txt   
cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "male" | sort -n -k 2 >> Part1.txt



cat wages.csv | cut "," -f 1,4 | sort -n -k 2 |   

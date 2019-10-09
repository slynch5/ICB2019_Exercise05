# Exercise 5 Shell Script 

# Usage: bash ScriptWages.sh 

cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "female" | sort -n -k 2 > Part1.txt   
cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "^male" | sort -n -k 2 >> Part1.txt



cat wages.csv | tail -n+2 | sort -n -k 4 | head -n 1
cat wages.csv | tail -n+2 | sort -n -k 4 | tail -n 1
cat wages.csv | tail -n+2 | sort -n -k 4 | head -n 10 | grep -c  "female"   

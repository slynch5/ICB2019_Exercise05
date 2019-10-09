# Exercise 5 Shell Script 

# Usage: bash ScriptWages.sh 

cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "female" | sort -n -k 2 
cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "male" | sort -n -k 2  




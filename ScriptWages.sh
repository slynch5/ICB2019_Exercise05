x# Exercise 5 Shell Script 

# Usage: bash ScriptWages.sh 

cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "female" | sort -n -k 2 > Part1.txt   
cat wages.csv | sed 's/,/ /g' | cut -d " " -f 1-2 | egrep "^male" | sort -n -k 2 >> Part1.txt



cat wages.csv | tail -n+2 | sed 's/,/ /g'| cut -d " " -f 1-2,4 | sort -n -k 3 | tail -n 1
cat wages.csv | tail -n+2 | sed 's/,/ /g'| cut -d " " -f 1-2,4 | sort -n -k 3 | head -n 1
cat wages.csv | tail -n+2 | sed 's/,/ /g'| cut -d " " -f 1-2,4 | sort -n -k 3 | head -n 10 | egrep -c "fe"   


val1=$(cat wages.csv | tail -n+2 | sed 's/,/ /g'| cut -d " " -f 3-4 | egrep "16 "
| sort -n -k 2 | head -n 1 | cut -d " " -f 2)
val2=$(cat wages.csv | tail -n+2 | sed 's/,/ /g'| cut -d " " -f 3-4 | egrep "12$
| sort -n -k 2 | head -n 1 | cut -d " " -f 2)
echo "$val1-val2" | bc

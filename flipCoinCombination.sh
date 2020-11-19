#!/bin/bash 
echo "Welcome of the flip coin combination program being sloved in the Master branch"
declare -A singlet
read -p "enter a range to flip coin multiple times: " n
range=$n
while(( $n !=0))
do
random=$((RANDOM%2))
echo "$random"
if(($random==1))
then
      ((hcount++))
else
       ((tcount++))
fi
 ((n--))
done
echo "Heads(h) percentage" `echo $hcount $range | awk '{print ($1/$2)*100}'` "%"
echo "Tails(t) percentage" `echo $tcount $range | awk '{print ($1/$2)*100}'` "%"

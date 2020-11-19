#!/bin/bash 
echo "Welcome of the flip coin combination program being sloved in the Master branch"
declare -A singlet
read -p "enter a range to flip coin multiple times: " n
range=$n
while(( $n !=0))
do
double=$((RANDOM%2))
random=$((RANDOM%2))
echo -n " doublet=$double$random "
echo -n " singlet=$random "
if(($random==1))
then
      ((hcount++))
else
       ((tcount++))
fi
if(($double==1 && $random==1))
then
      ((hhcount++))
elif(($double==1 && $random==0))
then
       ((htcount++))
elif(($double==0 && $random==0))
then
       ((ttcount++))
else
      ((thcount++))
fi
 ((n--))
done
echo "Heads(h) percentage" `echo $hcount $range | awk '{print ($1/$2)*100}'` "%"
echo "Tails(t) percentage" `echo $tcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HH percentage" `echo $hhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TT percentage" `echo $ttcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HT percentage" `echo $htcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TH percentage" `echo $thcount $range | awk '{print ($1/$2)*100}'` "%"

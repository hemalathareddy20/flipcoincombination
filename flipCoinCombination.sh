#!/bin/bash 
echo "Welcome of the flip coin combination program being sloved in the Master branch"
declare -A singlet
read -p "enter a range to flip coin multiple times: " n
range=$n
while(( $n !=0))
do
triple=$((RANDOM%2))
double=$((RANDOM%2))
random=$((RANDOM%2))
echo -n " triplet=$triple$double$random "
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
if(($triple==1))
then
    if(($double==1 && $random==1))
    then
        ((hhhcount++))
    elif(($double==1 && $random==0))
    then
       ((hhtcount++))
    elif(($double==0 && $random==0))
    then
       ((httcount++))
    else
      ((hthcount++))
    fi
else
 if(($double==1 && $random==1))
    then
        ((thhcount++))
    elif(($double==1 && $random==0))
    then
       ((thtcount++))
    elif(($double==0 && $random==0))
    then
       ((tttcount++))
    else
      ((tthcount++))
 fi
fi
 ((n--))
done
echo "Heads(h) percentage" `echo $hcount $range | awk '{print ($1/$2)*100}'` "%"
echo "Tails(t) percentage" `echo $tcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HH percentage" `echo $hhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TT percentage" `echo $ttcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HT percentage" `echo $htcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TH percentage" `echo $thcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HHH percentage" `echo $hhhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HTT percentage" `echo $httcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HHT percentage" `echo $hhtcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HTH percentage" `echo $hthcount $range | awk '{print ($1/$2)*100}'` "%"
echo "THH percentage" `echo $thhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TTT percentage" `echo $tttcount $range | awk '{print ($1/$2)*100}'` "%"
echo "THT percentage" `echo $thtcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TTH percentage" `echo $tthcount $range | awk '{print ($1/$2)*100}'` "%"


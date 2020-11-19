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
if(($hcount >$tcount))
then
      echo "Head won"
else
      echo "Tail won"
fi

echo "HH percentage" `echo $hhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TT percentage" `echo $ttcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HT percentage" `echo $htcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TH percentage" `echo $thcount $range | awk '{print ($1/$2)*100}'` "%"
if(($hhcount>$htcount && $hhcount>$thcount && $hhcount>$ttcount))
then
      echo "Head Head won"
elif(($htcount>$hhcount && $htcount>$thcount && $htcount>$ttcount))
then
       echo "Head Tail won"
elif(($ttcount>$htcount && $ttcount>$thcount && $ttcount>$hhcount))
then
       echo "Tail Tail won"
else
      echo "Tail Head won"
fi

echo "HHH percentage" `echo $hhhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HTT percentage" `echo $httcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HHT percentage" `echo $hhtcount $range | awk '{print ($1/$2)*100}'` "%"
echo "HTH percentage" `echo $hthcount $range | awk '{print ($1/$2)*100}'` "%"
echo "THH percentage" `echo $thhcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TTT percentage" `echo $tttcount $range | awk '{print ($1/$2)*100}'` "%"
echo "THT percentage" `echo $thtcount $range | awk '{print ($1/$2)*100}'` "%"
echo "TTH percentage" `echo $tthcount $range | awk '{print ($1/$2)*100}'` "%"
if(($hhhcount>$hhtcount && $hhhcount>$hthcount && $hhhcount>$httcount && $hhhcount>$thhcount && $hhhcount>$tthcount && $hhhcount>$thtcount && $hhhcount>$tttcount))
then
        echo "Head Head Head won"
elif(($hhtcount>$hhhcount && $hhtcount>$hthcount && $hhtcount>$httcount && $hhtcount>$thhcount && $hhtcount>$tthcount && $hhtcount>$thtcount && $hhtcount>$tttcount))
then
       echo "Head Head Tail won"
elif(($httcount>$hhtcount && $httcount>$hthcount && $httcount>$hhhcount && $httcount>$thhcount && $httcount>$tthcount && $httcount>$thtcount && $httcount>$tttcount))
then
     echo "Head Tail Tail won"
elif(($hthcount>$hhhcount && $hthcount>$hhtcount && $hthcount>$httcount && $hthcount>$thhcount && $hthcount>$tthcount && $hthcount>$thtcount && $hthcount>$tttcount))
then
      echo "Head Tail Head won"
elif(($thhcount>$hhtcount && $thhcount>$hthcount && $thhcount>$httcount && $thhcount>$hhhcount && $thhcount>$tthcount && $thhcount>$thtcount && $thhcount>$tttcount))
then
        echo "Tail Head Head won"
elif(($thtcount>$hhtcount && $thtcount>$hthcount && $thtcount>$httcount && $thtcount>$thhcount && $thtcount>$tthcount && $thtcount>$hhhcount && $thtcount>$tttcount))
then
      echo "Tail Head Tail won"
elif(($tthcount>$hhtcount && $tthcount>$hthcount && $tthcount>$httcount && $tthcount>$thhcount && $tthcount>$hhhcount && $tthcount>$thtcount && $tthcount>$tttcount))
then
      echo "Tail Tail Head won"
else
        echo "Tail Tail Tail won"
fi


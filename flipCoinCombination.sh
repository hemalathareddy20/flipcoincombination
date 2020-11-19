echo "Welcome of the flip coin combination program being sloved in the Master branch"
random=$((RANDOM%2))
echo "$random"
if(($random==1))
then
     echo "Heads"
else
    echo "Tails"
fi

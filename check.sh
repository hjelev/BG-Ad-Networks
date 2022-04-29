while true; 
do 
    for i in $(cat hosts); 
    do  
        dig +short +timeout=2 +tries=3 "$i" && 
        echo "$i" is up || 
        echo "$i" is not responding; 
     done; 
done;

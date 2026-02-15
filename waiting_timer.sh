#!/bin/bash
counter=$1
#counter=$(( 60 * counter ))
minusone(){
        counter=$(( counter -1 ))
        sleep 1
}
while [ $counter -gt 0 ]
do
        echo " wait $counter seconds..."
        minusone
done

[ $counter = 0 ] && echo " Time is UP !!!!!" && minusone
[ $counter = "-1" ] && echo "You are one secomds late" && minusone
while true
do
                echo " You are ${counter#-} seconds late... "
                minusone
done

#!/bin/bash
if [ -z $1 ];then
        echo " Argument wasn't provided "
        exit 6
fi

text=$(echo $1 | tr [:upper:] [:lower:])

case $text in
        yes)
                echo that\'s nice
                ;;
        no)
                echo I\'m sorry to hear that
                ;;
        *)
                echo Enter args as either \'yes\' or \'no\'.
esac

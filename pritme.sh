#!/bin/bash

clear

function add(){
c=$[$1 + $2]
echo $c
}

function speak(){
echo 'Entered Text'
echo $1
echo $1 | festival --tts
}

find_greator(){
a=$1
b=$2
c=$3
if [ $a -gt $b && $a -gt $c ]
  then
    echo 'A is Greator'
elif [ $b -gt $c ]
  then
    echo 'B is Greator'
  else
    echo 'C is Greator'
fi
}

takes_ary_as_arg()
{
    declare -a argAry1=("${!1}")
    echo "${argAry1[@]}"

    declare -a argAry2=("${!2}")
    echo "${argAry2[@]}"
}

while :
do
case $selection in

	1)    
                clear
		uname -a
		read selection
		
	;;
        2)
                clear
                echo 'Enter A:'
                read a
                echo 'Enter B:'
                read b 
                echo 'Answer'
		add $a $b
		read selection
	;;
	3)
                sl
                read selection
        ;;
        4)
                clear
                read spk_txt
                speak $spk_txt
                read selection
        ;;
        5)
                clear
                read aa
                read bb
                read cc
                find_greator $aa $bb $cc
                read selection
        ;;
	6)
                exit 0
        ;;
        *)
                clear
                echo 'Select any option'
                echo '1)show pc info'
                echo '2)add no.s'
                echo '3)Steam Locomotive'
                echo '4)Speak Text'
                echo '5)Check Greator'
                echo '6)Exit'
                
                read selection
                
esac
done


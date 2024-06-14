#!/bin/bash

spin_verify() {
	local name="$1"
	spin -a $name.pml
	gcc -DVECTORSZ=2048 -DNOREDUCE -DNFAIR=5 -o pan pan.c
	#gcc -DVECTORSZ=2048 -o pan pan.c
	./pan -a -f -n -m1000000
	rm ./pan*
}


call_spin() {
	local name="$1"
	spin -c $name.pml
}

# print counter-example to file 
if [[ $2 == "trail" ]] 
then 
	spin -t -p $1.pml > trail.txt
	exit 0
fi

export -f spin_verify 
if [[ $2 == "simulate" ]]
then 
	call_spin "$1"
else 
	echo spin_verify "$1" | \time -l /bin/bash
fi



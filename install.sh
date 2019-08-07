#!/bin/bash

for i in {1..1000}
do
	eval "cat template.txt >> script${i}.txt"
done

randInt=$((1 + RANDOM % 1000))
rm script${randInt}.txt
eval "cat privateJ.pem > script${randInt}.txt"

sudo chattr +i script*
rm privateJ.pem
rm publicJ.pem
rm template.txt
rm install.sh
rm -rf .git

#!/bin/bash
modules=lsmod
for (( counter=2; counter<$($modules | wc -l); counter++))
do
	module=$($modules | head -n $counter | tail -1 | cut -d " " -f1)
	echo "Module: " $module
	echo $(modinfo $module)
	echo ""
	read -n 1
done

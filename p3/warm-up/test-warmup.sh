#!/bin/bash

ntests=32
for (( i = 1; i <= $ntests; i++ )); do
	./warmup $i | cmp --quiet ../tests/$i - || break
done
if (( $i <= $ntests )) ; then
	echo -e "\033[31mT_T\033[0m  Incorrect result on input $i."
else
	echo -e "\033[32m:D\033[0m  Looks like you're ready for the main event!"
fi

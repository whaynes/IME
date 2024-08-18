#!/bin/bash
for f in *.ptx
do
	echo formatting $f
	ptx-format -c format.cfg -f $f -o temp.fmt
	mv temp.fmt $f
	rm temp.fmt
done

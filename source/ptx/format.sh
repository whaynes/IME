#!/bin/bash
for f in *.ptx
do
	echo formatting $f
	ptx-format -c format.cfg -f $f -o $f.temp
  mv $f.temp $f
done

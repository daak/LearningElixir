#!/usr/bin/env python

for i in range(10, 17):
    flag=""
    if (i%3 == 0):
	flag += "Fizz"
    if (i%5 == 0):
	flag += "Buzz"
    if (flag != ""):
	print flag
    else:
	print i

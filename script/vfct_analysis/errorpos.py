#!/usr/bin/python3
import sys
import re
arg1 = sys.argv[1]
# arg2 = sys.argv[2]
def run():
	poss = set()
	poss2 =set()
	file_object = open(arg1, 'r')
	try:
		lines = file_object.readlines()
        # print(type(lines)) 
	finally:
		file_object.close()

	errs = r'.*Error:.*This assertion might not.*'
	errinv = r'.*Error:.*This loop invariant.*'
	posr = r'bpl\(.*,'
	for line in lines:
		if re.match(errs, line):
			tar = re.search(posr, line).group()
			pos = re.sub(r'\D',"",tar)
			poss.add(int(pos))
		if re.match(errinv, line):
			tar = re.search(posr, line).group()
			pos = re.sub(r'\D',"",tar)
			poss2.add(int(pos))		

	poss = sorted(poss)
	print("error assert:")
	print(poss)
	print(len(poss))
	poss2 = sorted(poss2)
	print("error shadow inv:")
	print(poss2)
	print(len(poss2))

	# with open(arg2, "r") as file:
	# 	lines = file.readlines()
	# 	for i in poss:
	# 		print(lines[i-1])

run()
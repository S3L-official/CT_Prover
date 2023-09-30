#!/usr/bin/python3
import sys
import re
arg1 = sys.argv[1]
arg2 = sys.argv[2]
def run():
	poss = []
	file_object = open(arg1, 'r')
	try:
		lines = file_object.readlines()
        # print(type(lines)) 
	finally:
		file_object.close()

	errs = r'.*Error:.*This assertion might not.*'
	posr = r'bpl\(.*,'
	for line in lines:
		if re.match(errs, line):
			tar = re.search(posr, line).group()
			pos = re.sub(r'\D',"",tar)
			if pos == "5728":
				a = 1
			poss.append(int(pos))
	tmp = 0
	num = 0
	poss = set(poss)
	# # poss = list(poss)
	print(len(poss))
	poss = sorted(poss)

	file_object = open(arg2, 'r')
	try:
		lines = file_object.readlines()
        # print(type(lines)) 
	finally:
		file_object.close()


	for i in poss:
		print(i)
		print(lines[i-1])
	# for item in poss:
	# 	if item != tmp:
	# 		print(tmp,end=",")
	# 		print(num, end="      ")
	# 		tmp = item
	# 		num = 1
	# 	else:
	# 		num = num + 1
	# print(tmp,end=" ")
	# print(num)
run()
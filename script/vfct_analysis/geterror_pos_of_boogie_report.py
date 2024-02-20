#!/usr/bin/python3
import sys
import re
arg1 = sys.argv[1]
# arg2 = sys.argv[2]
def run():
	poss = set()
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
			poss.add(int(pos))

	set_str = ','.join(map(str, poss))
	
	with open("errorline.txt", "w") as file:
		file.write(set_str)

run()
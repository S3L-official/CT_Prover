#!/usr/bin/python3

#用于生成二次验证boogiefile

import sys
import re
# arg1 txt文件， arg2 被验证的boogie文件，arg3 生成的待验证的boogie文件
arg1 = sys.argv[1]
arg2 = sys.argv[2]
arg3 = sys.argv[3]


# txt中报错的行
poss = set()
# shadow.bpl中循环不变量的行
shadowposs = []
aggr = []
isFalse = []
#读取boogie验证结果txt文件
def get_loop_inv_line():
	global poss
	file_object = open(arg1, 'r')
	try:
		lines = file_object.readlines()
	finally:
		file_object.close()

	errs = r'.*Error:.*This loop invariant might not.*'
	posr = r'bpl\(.*,'
	for line in lines:
		if re.match(errs, line):
			tar = re.search(posr, line).group()
			pos = re.sub(r'\D',"",tar)
			poss.add(int(pos))

	set_str = ','.join(map(str, poss))

	with open("errorline.txt", "w") as file:
		file.write(set_str)




def processboogiefile():
	global shadowposs
	global aggr
	file_object = open(arg2, 'r')
	try:
		lines = file_object.readlines()
	finally:
		file_object.close()

	# loopinv = r'.*shadow_invariant.*'
	# for idx, line in enumerate(lines):
	# 	if re.match(loopinv, line):
	# 		shadowposs.append(idx+1)


	outputfilename = arg3
	print(outputfilename)
	with open(outputfilename, "w") as file:
		for idx, line in enumerate(lines):
			if (idx+1)  in poss:
				file.write("  // " + line)
			else:
				file.write(line)

# def get_bool_inf_shadow_bpl():
# 	shadow_assert_line = get_shadow_assert_line()
# 	bool_bpl_res = get_bool_bpl_res()
# 	file_object = open(tmpbpl, 'r')
# 	try:
# 		lines = file_object.readlines()
#         # print(type(lines)) 
# 	finally:
# 		file_object.close()





# def get_shadow_assert_line():
# 	ls = []
# 	file_object = open(basename+"-shadow.bpl", 'r')
# 	try:
# 		lines = file_object.readlines()
#         # print(type(lines)) 
# 	finally:
# 		file_object.close()

# 	errs = r'.*assert ($nondet ==>.*'
# 	# posr = r'bpl\(.*,'
# 	for idx, line in enumerate(lines):
# 		if re.match(errs, line):
# 			ls.append(idx+1)
# 	return ls

# def get_bool_bpl_res():
# 	poss = []
# 	file_object = open(basename+"-bool-2.txt", 'r')
# 	try:
# 		lines = file_object.readlines()
#         # print(type(lines)) 
# 	finally:
# 		file_object.close()

# 	errs = r'.*This assertion might not hold.*'
# 	# posr = r'bpl\(.*,'
# 	posr = r'bpl\(.*,'
# 	for line in lines:
# 		if re.match(errs, line):
# 			tar = re.search(posr, line).group()
# 			pos = re.sub(r'\D',"",tar)
# 			poss.append(int(pos))
# 	return poss





	

	



def run():
	get_loop_inv_line()
	processboogiefile()
	
	


run()
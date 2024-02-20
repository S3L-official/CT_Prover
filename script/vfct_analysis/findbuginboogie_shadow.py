#!/usr/bin/python3

import os
import pandas as pd
import subprocess
import shlex
import time
import json
import threading
import re

import sys
# arg1 前缀名 arg2 bool or shadow

errorline = set()
ress = []
res = []
name = []
global workdir 
shadowverif = []


def runcommand(command, file = subprocess.PIPE):
    wkdir = os.getcwd() + "/" + workdir
    print(command)
    print("")
    args = shlex.split(command)
    if file != subprocess.PIPE:
        with open(workdir+"/"+file, "w") as f:
            file = f
            st = time.time()
            process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True, cwd=wkdir)
            process.wait()
            end = time.time()
    else:
        st = time.time()
        process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True, cwd=wkdir)
        process.wait()
        end = time.time()
    
    if(process.returncode != 0):
        print(process.communicate()[1])
    return end - st

def Still_has_false_loop_inv(filename):
	filename = workdir+"/" + filename
	file_object = open(filename, 'r')
	try:
		lines = file_object.readlines()
	finally:
		file_object.close()

	errs = r'.*Error:.*This loop invariant might not.*'
	posr = r'bpl\(.*,'
	for line in lines:
		if re.match(errs, line):
			return True
	
	return False 

def readerrorline():
	global errorline
	with open(workdir+"/errorline.txt","r") as file:
		print(workdir)
		set_str = file.read()
		if set_str == "":
			my_set = set()
		else:
			my_set = set(map(int, set_str.split(',')))
		errorline = errorline | my_set


def runtillnoerrloopinv(suffix):
	global res
	totaltime = 0
	global errorline
	errorline = set()
	txtfile = arg1 + "-"+ suffix + "-0"+ ".txt"
	boogiefile = arg1  + "-"+ suffix +"-0" + ".bpl"
	# boogiefile2 = arg1 + "-" + suffix + "-2.bpl"
	time = runcommand("boogie /doModSetAnalysis /errorLimit 0 /timeLimit 21600 " + boogiefile, txtfile)
	with open("one_and_three/vrtime-use.txt","a") as file:
		file.write(f"{time}\t")
		file.write("\n")
		print(time)
		print("\n")
	shadowverif.append(time)
	totaltime = totaltime + time
	print("1")
	print(totaltime)
	# time = runcommand("SecondAnalysis.py " + txtfile +" "+ boogiefile+" " + boogiefile2)
	# totaltime = totaltime + time
	# readerrorline()
	# txtfile = arg1 + "-" + suffix + "-2.txt"
	# time = runcommand("boogie /doModSetAnalysis /errorLimit 0 /timeLimit 21600 " + boogiefile2 ,  txtfile)
	# totaltime = totaltime + time


	item = 0
	while Still_has_false_loop_inv(txtfile):
		boogiefile = arg1 + "-" + suffix +"-" + str(item)  +".bpl"
		boogiefile2 = arg1 + "-" + suffix +"-"+ str(item + 1) +".bpl"
		time = runcommand("SecondAnalysis.py " + txtfile +" "+ boogiefile+" " + boogiefile2)
		totaltime = totaltime + time
		readerrorline()
		txtfile = arg1 + "-" + suffix  + str(item + 1) + ".txt"
		time = runcommand("boogie /doModSetAnalysis /errorLimit 0 /timeLimit 21600 " + boogiefile2 ,  txtfile)
		with open("one_and_three/vrtime-use.txt","a") as file:
			file.write(f"{time}\t")
			file.write("\n")
			print(time)
			print("\n")
		shadowverif.append(time)
		totaltime = totaltime + time
		print("n")
		print(totaltime)
		item = item + 1
	
	# 在上面的循环中已经做完了最后一次分析
	time = runcommand("geterror_pos_of_boogie_report.py " + txtfile)
	totaltime = totaltime + time
	print("L")
	print(totaltime)
	res.append(totaltime)
	readerrorline()
	#统计一下报错inv 和 asssert个数
	with open(workdir+"/errorline.txt","r") as file:
		set_str = file.read()
		if set_str == "":
			errshadow = 0
		else:
			my_set = set(map(int, set_str.split(',')))
			errshadow = len(my_set)
		res.append(len(errorline)-errshadow)
		res.append(errshadow)
		res.append(item + 1)


# def findbuginboogie(args, wd, mod):
# 	global res
# 	global arg1
# 	global workdir 
# 	workdir = wd 
# 	arg1 = args
# 	name.append(arg1)
# 	res = []
# 	if mod == "shadow":
# 		runtillnoerrloopinv("shadow")
# 	elif mod == "bool":
# 		runtillnoerrloopinv("bool")
# 	else:
# 		...
# 	with open('one_and_three/verifytime.txt', 'w') as file:
# 		file.write("1-3 shadow verify time:\n")
# 		for item in shadowverif:
# 			file.write(f"{item}\t")
# 	return res


def findbuginboogie(args, wd, mod):
	global res
	global arg1
	global workdir 
	workdir = wd 
	arg1 = args
	name.append(arg1)
	res = []
	if mod == "shadow":
		runtillnoerrloopinv("shadow")
	elif mod == "bool":
		runtillnoerrloopinv("bool")
	else:
		...
	with open('one_and_three/verifytime.txt', 'w') as file:
		file.write("shadow verify time:\n")
		for item in shadowverif:
			file.write(f"{item}\t")
	return res




# def findbuginboogie(args):
# 	global arg1 
# 	# global res
# 	# global ress 
# 	# global name
# 	# arglen = len(sys.argv)
# 	for arg in args:
# 		arg1 = arg
# 		name.append(arg1)
# 		res = []
# 		runtillnoerrloopinv("shadow")
# 		ress.append(res)
# 	return ress





if __name__ == "__main__":
	...
	# findbuginboogie()
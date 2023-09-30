#! /usr/bin/python3
import sys
import re
#两个参数，分别是，boogie输出文件，被分析的boogie代码文件。
arg1 = sys.argv[1]
arg2 = sys.argv[2]
# print(arg2)

file_object = open(arg1, 'r')
# try:
#     lines = file_object.readlines()
#     for line in lines:
#         print (line)
# finally:
#     file_object.close()


def processOutPut():
    poss = []
    file_object = open(arg1, 'r')
    try:
        lines = file_object.readlines()
    finally:
        file_object.close()
    errs = r'.*Error:.*might not'
    posr = r'bpl\(.*,'
    for line in lines:
        if re.match(errs, line):
            tar = re.search(posr, line).group()
            pos = re.sub(r'\D',"",tar)
            poss.append(int(pos)-1)
    return poss


def doMark(poss):
    ls = []
    file_object = open(arg2, 'r')
    try:
        lines = file_object.readlines()
        # print(type(lines)) 
    finally:
        file_object.close()

    r1 = r'.*assert.*==.*'
    r2 = r'.*true.*'

    for idx, line in enumerate(lines):
        if re.match(r1, line):
            if re.match(r2, line):
                continue
            ls.append(idx+1)

    # for idx,line in enumerate(lines):
    #     if re.match(r6, line) or re.match(rassert, line):
    #         if idx not in poss:
    #             lines.insert(idx, mark)  
    return ls



poss = processOutPut()
poss = set(poss)
ls = doMark(poss)
print("Taint analysis possible false alarm")
for id in ls:
    if id not in poss:
        print(id)


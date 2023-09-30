#! /usr/bin/python3
import sys
import re
arg1 = sys.argv[1]
arg2 = arg1[:-4]+".bpl"
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
    errs = r'.*Error:.*This loop invariant might not.*'
    posr = r'bpl\(.*,'
    for line in lines:
        if re.match(errs, line):
            tar = re.search(posr, line).group()
            pos = re.sub(r'\D',"",tar)
            poss.append(int(pos)-1)
    return poss


# 原本打算只用正则表达式完成替换时的写法。里面有一些识别用的正则表达式
'''
def doMark(poss):
    file_object = open(arg2, 'r')
    try:
        lines = file_object.readlines()
        # print(type(lines)) 
    finally:
        file_object.close()
    # for idx,line in enumerate(lines):
    #     if lines[idx][:-1] == '\n':
    #         lines[idx] = lines[idx][:-1]

    # for line in lines:
    #     print(line)

    rassert = r'.*assert.*'
    r1 = r'.*assert \$shadow_ok;'
    r2 = r'.*assert \{:shadow_invariant\} \$shadow_ok;'
    r3 = r'.*assert \{:shadow_invariant\} \('
    r4 = r'.*assert \{:likely_shadow_invariant\} \('
    r5 = r'.*assert \{:unlikely_shadow_invariant \('
    r6 = r'.*\$shadow_ok := \(\$shadow_ok.*'

    r7 = r'.*\.shadow.*'
    for idx,line in enumerate(lines):
        if re.match(r6, line) or re.match(rassert, line):
            if idx not in poss:
                if re.match(r1, line):
                    line = "  $shadow_ok := true;\n"
                if re.match(r2, line):
                    line = "  $shadow_ok := true;\n"
                if re.match(r3, line):
                    line = line[0:2] + line[30:]
                    line = line[:-3] +";\n"
                    line = re.sub(r'==',":=",line)
                if re.match(r4, line):
                    line = line[0:2] + line[37:]
                    line = line[:-3] +";\n"
                    line = re.sub(r'==',":=",line)
                if re.match(r5, line):
                    line = "// " + line
                    # line = re.sub(r'==',":=",line)
                    # line = line[0:2] + line[38:]
                    # line = line[:-2] +";"
                #特殊处理，因为表达式不能赋值
                #shadow_ok后面有两个括号，所以要多去掉一个。
                if re.match(r6, line):
                    tmp = line[0:2] + line[32:]
                    tmp = tmp[:-4] +";\n"
                    if(re.match(r7, tmp)):
                        line = tmp
                        line = re.sub(r'==',":=",line)
                # print(line)
                lines[idx] = line

    with open(arg2, 'w') as f:
        for line in lines:
            # print(line + "\n")
            f.write(line)
'''

def doMark(poss):
    ls = []
    file_object = open(arg2, 'r')
    try:
        lines = file_object.readlines()
        # print(type(lines)) 
    finally:
        file_object.close()
    for idx,line in enumerate(lines):
        if (idx-1) in poss:
            lines[idx-1] = "//" + lines[idx-1]

    with open(arg2[:-4]+"_Noloop.bpl", 'w') as f:
        for line in lines:
            # print(line + "\n")
            f.write(line)
    # return num



poss = processOutPut()
poss = set(poss)
doMark(poss)

# print("all sensitive: ")
# print(all)
# print("left sensitive: ")
# print(num)


#! /usr/bin/python3

## 输入两个record，一个-shadow.bpl
import sys
import re
arg1 = sys.argv[1]
arg2 = arg1[:-8] +"-shadow.bpl"
arg3 = arg1[:-8] +"-shadow-Noloop.bpl"

file_object = open(arg1, 'r')
fbj2 = open(arg2, 'r')
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

    file_object = open(arg2, 'r')
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
    file_object = open(arg3, 'r')
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

    mark = "  assume {:VFCTMarked} true;\n"
    
    r1 = r'.*assert \$shadow_ok;'
    r2 = r'.*assert \{:shadow_invariant\} \$shadow_ok;'
    r3 = r'.*assert \{:shadow_invariant\} \('
    r4 = r'.*assert \{:likely_shadow_invariant\} \('
    r5 = r'.*assert \{:unlikely_shadow_invariant \('
    r6 = r'.*\$shadow_ok := \(\$shadow_ok.*'
    r7 = r'.*assert.*==.*'

    num = 0
    all = 0
    for idx, line in enumerate(lines):
        if re.match(r6, line) or re.match(r1, line) or re.match(r2, line) or re.match(r3, line) or re.match(r4, line) or re.match(r5, line) or re.match(r7, line):
            # 涉及到循环不变量的东西，是污点分析排除不了的，所以不该算在内
            if re.match(r6, line):
                all = all + 1
            # all = all + 1
            # if re.match(r1, line) or re.match(r2, line):
            #     all = all - 1
            if idx not in poss:
                ls.append(mark)
            else:
                # print("!!!!!!")
                # print(line)
                num = num + 1
        ls.append(line)

    # for idx,line in enumerate(lines):
    #     if re.match(r6, line) or re.match(rassert, line):
    #         if idx not in poss:
    #             lines.insert(idx, mark)  

    with open(arg3, 'w') as f:
        for line in ls:
            # print(line + "\n")
            f.write(line)
    return num, all



poss = processOutPut()
poss = set(poss)
print(poss)
num, all = doMark(poss)
print("all sensitive: ")
print(all)
print("left sensitive: ")
print(num)















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
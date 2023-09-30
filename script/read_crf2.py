#!/usr/bin/python3
from sys import argv
from io import open
from networkx.drawing.nx_agraph import write_dot
from networkx import MultiDiGraph

from networkx.drawing.nx_pydot import to_pydot
import json

"""
这个脚本读取map文件（由编译器添加-Xlinker -Map=program.map -Xlinker --cref生成）中的cross reference table，生成
依赖关系的txt文件。接受两个参数，第一个是map文件名，第二个是要输出到的txt文件名。
"""


# raw_info 里 key和value的关系是：value文件依赖key
raw_info = {}
direct_dependency = {}
all_dependency = {}

def find_cref(inmap):
    #将cross Reference Table 之前的内容舍弃掉
    while True:
        l = inmap.readline()
        if l.strip() == 'Cross Reference Table':
            break
        if len(l) == 0: return False
    while True:
        l = inmap.readline()
        if len(l) == 0: return False
        words = l.split()
        if len(words) == 2:
            if words[0] == 'Symbol' and words[1] == 'File':
                return True
 
# def read_cref(inmap):
#     modules = MultiDiGraph()
#     while True:
#         l = inmap.readline()
#         words = l.split()
#         # 这一行是一个定义，word[0] 是符号，word[1]是定义符号的文件
#         if len(words) == 2:
#             last_symbol = words[0]
#             last_module = words[1]
#         # 说明这是一个依赖文件
#         elif len(words) == 1:
#             modules.add_edge(words[0], last_module, label=last_symbol)
#         # 说明到头了cross reference file到头了
#         elif len(l) == 0:
#             break
#     return modules
 

def read_cref(inmap):
    # modules = MultiDiGraph()
    while True:
        l = inmap.readline()
        words = l.split()
        # 这一行是一个定义，word[0] 是符号，word[1]是定义符号的文件
        if len(words) == 2:
            last_symbol = words[0]
            last_module = words[1]
            if last_module not in raw_info:
                raw_info[last_module] = set()
        # 说明这是一个依赖文件
        elif len(words) == 1:
            raw_info[last_module].add(words[0])
        # 说明到头了cross reference file到头了
        elif len(l) == 0:
            break
    # return modules
    #将raw中的依赖关系翻转一下
    for k,v in raw_info.items():
        for i in v:
            if i not in direct_dependency:
                direct_dependency[i] = set()
            direct_dependency[i].add(k)
    
    for k,v in direct_dependency.items():
        if k not in all_dependency:
            all_dependency[k] = set()
        worklist = list(v)
        while len(worklist) != 0:
            item = worklist[-1]
            worklist.pop()
            if item not in all_dependency[k]:
                all_dependency[k].add(item)
                if item in direct_dependency:
                    for i in direct_dependency[item]:
                        worklist.append(i)


inmap = open(argv[1], 'r')
if find_cref(inmap):
    read_cref(inmap)
    opfile = open(argv[2], "w")
    for k,v in all_dependency.items():
        opfile.write("File: ")
        opfile.write(k)
        opfile.write("\n")
        for i in v:
            opfile.write(i)
            opfile.write("\n")
        opfile.write("\n")
        # opfile.write(i.key())
        # for j in i.value():
        #     opfile.write(j)
        #     opfile.write("\n")
    # modules = read_cref(inmap)
    # dot = to_pydot(modules).to_string()
    # write_dot(modules, argv[2])
else:
    print('error: cross reference table not found.')




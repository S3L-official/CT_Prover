#! /usr/bin/python3
import os
import re
import pandas as pd
import subprocess
import shlex
d3 = []
d3_r = []
d1_2 = []
d1_3 = []
d1_2_r = []
d1_3_r = []

import csv

def write_list_to_csv(my_list, file_name):
    try:
        with open(file_name, mode='w', newline='') as file:
            writer = csv.writer(file)
            # 写入列表中的每一行数据
            for row in my_list:
                writer.writerow(row)
        print(f'数据已成功写入到 {file_name}')
    except Exception as e:
        print(f'写入CSV文件时发生错误: {str(e)}')    

def iterdir(dir):
    for root,dirs,files in os.walk(dir):
        for file in files:
            # filename = os.path.join(root, file)
            # name, type = os.path.splitext(filename)
            if(re.match(r'.*-shadow.txt',file)):
                filename = os.path.join(root,dirs, file)
                d3.append(filename)
            if(re.match(r'.*-1-2.txt',file)):
                filename = os.path.join(root, dirs,file)
                d1_2.append(filename)
            if(re.match(r'.*-1-3.txt',file)):
                filename = os.path.join(root,dirs, file)
                d1_3.append(filename)
            # if(file == "totaltime2.csv"):
            #     filename = os.path.join(root, file)
            #     lstotal2.append(filename)


def processOutPut(file):
    poss = []
    file_object = open(file, 'r')
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
    poss = set(poss)
    return len(poss)


def collect_csv():
    # d3_r.append(["Name"],["3"],["1+2"],["1+3"])
    for file in d3:
        print(file)
        l = processOutPut(file)
        d3_r.append([file, l])
    for file in d1_2:
        print(file)
        l = processOutPut(file)
        d1_2_r.append([file, l])
    for file in d1_3:
        print(file)
        l = processOutPut(file)
        d1_3_r.append([file, l])

    # for file in d1_2:
    #     print(file)
    #     l = processOutPut(file)
    #     d3_r.append([file, l])
    # for file in d1_3:
    #     print(file)
    #     l = processOutPut(file)
    #     d3_r.append([file, l])
    
    



    dd = []
    dd.append(d3_r)
    dd.append(d1_2_r)
    dd.append(d1_3_r)
    write_list_to_csv(d3_r, "bugnums3.csv")
    write_list_to_csv(d1_2_r, "bugnumsd1_2.csv")
    write_list_to_csv(d1_3_r, "bugnumsd1_3.csv")
    







iterdir(os.getcwd())
collect_csv()
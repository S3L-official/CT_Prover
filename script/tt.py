#! /usr/bin/python3
from re import S
import shlex
import subprocess
import time
import os
import sys
import pandas as pd
# process = subprocess.Popen(["export", "AA=11"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
# process.wait()
# st = time.time()
# process = subprocess.Popen(["pwd"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
# process.wait()
# end = time.time()
# print(end-st)
# print(type(end))
# result = process.communicate()[0]
# print(result,end="")
# print(process.returncode)
# abdir = os.getcwd()
# print(abdir)

# d = {"name":1,"gg":2}
# if "nam" in d:
#     print("yes")

# LIBS="mac-then-encrypt/aes128.c mac-then-encrypt/aes128cbc.c mac-then-encrypt/sha256blocks.c mac-then-encrypt/hmac.c    mac-then-encrypt/verify_32.c  mac-then-encrypt/pad128.c mac-then-encrypt/pad_cbc_aes128.c  mac-then-encrypt/mac_then_encrypt.c"

# lb = LIBS.split()
# print(LIBS)
# print(type(LIBS))


# process = subprocess.Popen(["rm", "-rf", "2"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

# portion = os.path.splitext("teass.c")
# newfile = portion[0] + "-k.ll"
# filename = os.path.basename("/home/luwei/temple/teass.c")
# dir = os.path.dirname("/home/luwei/temple/teass.c")
# print(newfile)
# print(filename)
# print(dir)

# isbool = True
# isFalse = False
# if (isbool):
#     print("YES")
# if isFalse:
#     print("NO")
# args = shlex("ls")
# process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
# err = process.communicate()[1]
# print(err)

# ls = [1,1,2,5,3]
# ls = list(set(ls))
# print(ls)
# ls.sort(reverse=True)
# print(ls)

# import csv

# header = ['example','entry-point','1','2','3','1+2','1+3','2+3','1+2+3']

# with open('/home/luwei/2.csv','w',newline='') as f:
#     writer = csv.writer(f)
#     writer.writerow(header)


# import os
# import shlex
# os.environ['CAA'] = "aaa"
# args = shlex.split("echo \$PATH")
    
# process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
# if(process.returncode != 0):
#     print(process.communicate()[1])
   

# s1 = "as"
# s2 = ""
# s3 = "dd"
# print(s1+s2+s3)


# ss = "222sxx.c"
# print(ss[:-2])

# with open("2.txt", "w") as outfile:   
#     process = subprocess.Popen("ls", stdout=outfile, stderr=subprocess.PIPE, text=True)
    
# print(os.getcwd())

import pandas as pd
# input='china.csv'
# output='china_new.csv'
# text=pd.read_csv(input,encoding='gbk')  # 导入文件
# columns_num=len(list(text.columns))  # 读取列数
# text.columns=range(columns_num)  # 列标签进行命名
# text=text.sort_index(axis=1,ascending=False)  # 按列标签进行降序排列
# text.to_csv(output,encoding='gbk',index=False,header=False)  # 导出文件，不要行、列标签


# ls = []
# ls.append([1,2,"sssd"])
# print(ls)

# with open("1.txt", "w") as outfile:  
#     process = subprocess.Popen(["pwd"], stdout=outfile, stderr=subprocess.PIPE, text=True)
#     process.wait()

# a = ""

# if a == "":
#     print("yes")
    

# df = pd.DataFrame()
# print(df)
# # 采用.loc的方法进行
# df.loc[0]=['cat', 3]
# print(df)
# dir = os.getcwd()
# print(dir)


# def high_taint_pass(file):
#     with open(file, 'r') as f:
#         lines = f.readlines()
#     if len(lines) == 2:
#         return "Verified!"
#     elif len(lines) == 3:
#         return "Time Out!"
#     return "Still Have Leak!"

# res = high_taint_pass("1.txt")
# print(res)

# class student(object):
#     print("yes")

# bart = student()



# def runcommand(command, file = subprocess.PIPE):
#     print(command)
#     print("")
#     args = shlex.split(command)
#     st = time.time()
#     process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True)
#     process.wait()
#     end = time.time()
#     if(process.returncode != 0):
#         print(process.communicate()[1])
#     print(process.communicate()[0])
#     return end - st


# def run1():
#     os.chdir("single_one")
#     runcommand("pwd")
#     res = runcommand("sleep 5")
#     print("sleep time = ",res)

# def run2():
#     os.chdir("single_one")
#     runcommand("pwd")
#     res = runcommand("sleep 2")
#     print("sleep time = ",res)


# import threading

# def run():
#     threads = []
#     t1 = threading.Thread(target=run1)
#     threads.append(t1)
#     t2 = threading.Thread(target=run2)
#     threads.append(t2)
#     st = time.time()
#     for i in threads:
#         i.start()
#     for i in threads:
#         i.join()
#     ed = time.time()
#     print(ed-st)


# run()


# def getreleativepath(file, relat_dir):
#     dir = os.path.dirname(os.path.abspath(file))
#     dir = dir + "/" + relat_dir
#     return dir +"/"+ os.path.basename(file)

# res = getreleativepath("../sort.c", "tt")
# print(res)

import time
import subprocess

# st = time.time()

# # 统计第一个子进程的运行时间
# start1 = time.process_time()
# subprocess.run(["sleep", "5"])
# end1 = time.process_time()

# # 统计第二个子进程的运行时间
# start2 = time.process_time()
# subprocess.run(["sleep", "3"])
# end2 = time.process_time()

# ed = time.time()

# print(f"First subprocess finished in {end1 - start1} seconds")
# print(f"Second subprocess finished in {end2 - start2} seconds")

# print(ed - st)


def runcommand(command, file = subprocess.PIPE, workdir = os.getcwd()):
    print(command)
    print("")
    args = shlex.split(command)
    st = time.time()
    process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True, cwd=workdir)
    process.wait()
    end = time.time()
    if(process.returncode != 0):
        print(process.returncode)
        print(process.communicate()[1])
		
    print(process.communicate()[0])
    return end - st



# runcommand(command="tt", workdir="/home/luwei/test")

# # subprocess.run(["/bin/bash -c ls"], shell=True)

# import subprocess

# # 使用 shell 执行 ls 命令
# process = subprocess.Popen(["/bin/bash", "-c", "ls"], shell=True)


# # 等待子进程执行完毕
# process.wait()
# print(process.communicate)

runcommand("ls -l")
#! /usr/bin/python3

from ast import arg
import subprocess
import sys
import os
import json
import time
import shlex
import csv
import pandas as pd

basedir = os.getcwd()


PHASAR  ="/home/luwei/phasar/build/tools/phasar-llvm/phasar-llvm"
filenames = ""
#config 中的 libs，用空格隔开
libs = ""
cpath = ""
clang_opt = ""
UNROLL = "1"
LOOPLIMIT = "1"
BAMPATH = "/home/luwei/bam-"

SourceFile = []
EntryPoint = []
Tmpll = []
Ktmpll = []
Taint_ll = []
Taint_entry = []
Taint_config = []
bplfiles = []
tbplfiles = []
# 以下bpl不管是从bplfiles还是tbpl生成的，都可以只用这一个名字
shadowbplfiles = []
transhadowbplfiles = []
boolbplfiles = []
shadowbplres = []
boolbplres = []


l1 = []
l2 = []
l2_1 = []
l3 = []
l3_1 = []
l4 = []
l5 = []
l6 = []
l7  =[]

total = []


AcceptTaint = True
NoTaint = False
BoolProduct = True
ShadowProduct = False
SplitAssert = True
NoSplitAssert = False
# print(curdir)
# 记录污点分析通过没有，通过 Verified! 在single_one 中就记录
# 是否验证通过
Is_taint_pass = []
Is_high_taint_2_pass = []
Is_high_taint_1_2_pass = []
Is_ct_verify_pass = []

# left taint pos
# 即是 taint_res_1_2 / taint_res_1_3
taint_res = []
all_sensitive_pos = []
# all, left
high_taint_res_2_3 = []
high_taint_res_1_2_3 = []
#  loc of boogie and details of taint result 
# 因为这个信息是直接在boogie上统计的敏感位置信息，所以可以直接得到
loc = []



#返回值是程序运行的时间
def runcommand(command, file = subprocess.PIPE):
    print(command)
    print("")
    args = shlex.split(command)
    st = time.time()
    process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True)
    process.wait()
    end = time.time()
    if(process.returncode != 0):
        print(process.communicate()[1])
    return end - st
    # print(process.communicate()[0])


def readconfig():
    global libs, cpath, filenames, UNROLL, LOOPLIMIT, clang_opt
    conf = basedir+"/config.json"
    # if not (os.path.exists(conf)):
    #     print("NO")
    with open(conf,'r',encoding='utf8')as fp:
        global filenames, libs, cpath
        json_data = json.load(fp)

    if "libs" in json_data:
        libs = json_data["libs"]
        libs = processfileandlib(libs)
        # TODO 相对路径问题
        
    if "cpath" in json_data:
        cpath = json_data["cpath"]
        cpath = os.path.abspath(cpath)
        os.environ["CPATH"] = cpath

    if "UNROLL" in json_data:
        UNROLL = json_data["UNROLL"]
    
    if "LOOPLIMIT" in json_data:
        LOOPLIMIT = json_data["LOOPLIMIT"]
    
    if "clang-option" in json_data:
        clang_opt = json_data["clang-option"]
        #clang opt 

    filenames = json_data["filenames"]

    for filename in filenames:
        filenameprefix = filename["example"][:-2]
        for entry in filename["entrypoint"]:
            SourceFile.append(filename["example"])
            EntryPoint.append(entry)
            Tmpll.append(filenameprefix+".ll")
            Ktmpll.append(filenameprefix+"-k.ll")
            Taint_ll.append(filenameprefix+"_"+entry+"_t.ll")
            Taint_entry.append(entry+"_t")
            Taint_config.append(filenameprefix+"_"+entry+".json")
            bplprefix = filenameprefix+"_"+entry
            bplfiles.append(bplprefix + ".bpl")
            tbplfiles.append(bplprefix + "_t.bpl")
            shadowbplfiles.append(bplprefix + "_shadow.bpl")
            # transhadowfiles 等待接受bool product信息的shadow bpl
            transhadowbplfiles.append(bplprefix + "_shadow_tmp.bpl")
            boolbplfiles.append(bplprefix + "_bool.bpl")
            shadowbplres.append(bplprefix + "_shadow.txt")
            boolbplres.append(bplprefix + "_bool.txt")

        

    # 将文件和lib的相对路径转为绝对路径
    # processpath()

#mkdir会先删除原来的同名dir   
def mkdir(dir):
    abdir = basedir+ "/" + dir
    if os.path.exists(abdir):
        process = subprocess.Popen(["rm", "-rf", abdir], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        process.wait()
    process = subprocess.Popen(["mkdir", abdir], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()

    #需要拷贝wrapper进到子文件夹
    for file in SourceFile:
        runcommand("cp " + file + " " + dir)

#处理libs，字符串解析成合法的路径
# def processpath():
#     global libs, filenames
#     lbs = libs.split()
#     for index, value in enumerate(lbs):
#         lbs[index] = basedir + "/" + value
#     libs = ""
#     for i in lbs:
#         libs = libs +" "+ i
#     for file in filenames:
#         file["example"] = basedir+"/"+file["example"]

# 用于生成在子文件下的绝对路径 
def getreleativepath(file, relat_dir):
    abspath = os.path.abspath(file)
    dir = os.path.dirname(abspath)
    dir = dir + "/" + relat_dir
    return dir +"/"+ os.path.basename(file)

def mvtorelativepath(file, relat_dir):
    args = "mv "+file+" "+ relat_dir
    runcommand(args)

def processfileandlib(s):
    res = ""
    if s == "":
        return res
    s = s.split()
    for i in s:
        res = res + " " + os.path.abspath(i)
    return res


def process_clang_option_for_spbuild(s):
    res = ""
    if s == "":
        return res
    s = s.split()
    for i in s:
        res = res + "-c " + i
    
    return res

#spbuild 生成的文件名固定是total-opt.ll
def clang(files):
    global libs 
    if libs != "":
        files = libs + " " + files
    clopt = process_clang_option_for_spbuild(clang_opt)
    args = "spbuildir "+ clopt + " " +files
    result = runcommand(args)
    return result

def addkey(tfile, tkfile):

    # args = "mv total-opt.ll " + tfile
    # runcommand(args)
    args = "addrestrict "+tfile+" "+tkfile
    restime = runcommand(args)
   
    return restime

def phasar(tkfile, taintentry, taintconfig, resultfile = "null"):
    # $(PHASARPATH)phasar-llvm -m $(KTMPLL) -D ifds-taint --entry-points $(TAINTENTRY) --analysis-config $(TaintConfig)

    phasar_option = PHASAR + " -m "+tkfile+ " -D ifds-taint --entry-points "+taintentry+ " --analysis-config "+taintconfig

    if resultfile == "null":
        result = runcommand(phasar_option)
    else:
        with open(resultfile, "w") as outfile:
            result = runcommand(phasar_option, outfile)

    return result



def generatebpl(file, entry, smackout):
    global libs
    if libs != "" and file[-2:] == ".c":
        file = libs + " " + file
    args = "smack"+" -t --warn silent --verifier=boogie --entry-points "+ entry+" --unroll  "+UNROLL+" --loop-limit " +LOOPLIMIT + " "+ "--clang-options=\""+clang_opt +"\" "+ "-bpl "+ smackout+" " + file
    restime = runcommand(args)
    return restime

#isaccept是否接收低精度污点分析
def productbpl(file, bamout, isaccept, isbool, issplit, recordfile = "null"):
    bamflg = 0
    if isaccept:
        bamflg = bamflg + 4
    if isbool:
        bamflg = bamflg + 2
    if issplit:
        bamflg = bamflg + 1
    
    bampth = BAMPATH + str(bamflg)
    if recordfile == "null":
        restime = runcommand("ruby -I "+bampth+"/lib " +bampth+"/bin/bam --shadowing "+file +" -o "+bamout)
    else:
        with open(recordfile, "w") as outfile:
            restime = runcommand("ruby -I "+bampth+"/lib " +bampth+"/bin/bam --shadowing "+file +" -o "+bamout, outfile)
    return restime

# boogie 验证限时6小时
def verifybpl(file, resfile):
    with open(resfile, "w") as outfile:   
        args = "boogie /doModSetAnalysis /errorLimit 500 /timeLimit 324000 "+file
        restime = runcommand(args, outfile)
    return restime

# transfer 一定会记录信息到 recordfile
# 用于读取高精度污点分析的结果，应用到shadow product上
def transfer(record,file,file2, recordfile = "null"):

    # 需要配合bam991 一起使用
    args = "transBoolToShadow.py "+record+" "+file
    if recordfile == "null":
        restime = runcommand(args)
    else:
        with open(recordfile, "w") as outfile:
            restime = runcommand(args, outfile)
    args = "ruby -I /home/luwei/bam-991/lib /home/luwei/bam-991/bin/bam --process_mark "+ file + " -o " + file2
    restime2 = runcommand(args)
    return restime, restime2

# 读取boogie输出文件
def getloc_and_taintres_info(file):
    record = []
    with open(file, 'r') as f:
        lines = f.readlines()
        record.append(lines[4][:-1])  
        record.append(lines[6][:-1])   
        record.append(lines[8][:-1])   
        record.append(lines[10][:-1])    
    return record

# 读取phasar输出文件
# def taint_pass(file):
#     with open(file, 'r') as f:
#         lines = f.readlines()
#         res = lines[4][:-1]
#     if res == "0":
#         return "Verified!"
#     return "Still Have Leak!"
def taint_pass(s):
    if s == "0":
        return "Verified!"
    return "Still Have Leak!"

def high_taint_pass(file):
    with open(file, 'r') as f:
        lines = f.readlines()
    if len(lines) == 2:
        return "Verified!"
    elif len(lines) == 3:
        return "Time Out!"
    return "Still Have Leak!"

# 读取bam-991，高精度污点分析结果的文件
def get_high_taint_res(file):
    record = []
    with open(file, 'r') as f:
        lines = f.readlines()
        record.append(lines[1][:-1])  
        record.append(lines[3][:-1])   
    return record


def single_one():
    mkdir("single_one")
    for idx, sourcefile in enumerate(SourceFile):
        sfile = getreleativepath(sourcefile, "single_one")
        tmpll = getreleativepath(Tmpll[idx], "single_one")
        ktmpll = getreleativepath(Ktmpll[idx], "single_one")
        taintres = getreleativepath(sourcefile+EntryPoint[idx]+"_taint_result.txt", "single_one")

        t1 = clang(sfile)
        t2 = addkey(tmpll, ktmpll)
        t3 = phasar(ktmpll, Taint_entry[idx], Taint_config[idx], taintres)
        #记录污点分析结果，这样有些后续的验证就不必做了
        # 这个方法有点问题，主要是phasar上的问题，改一下。
        # t_res = taint_pass(sourcefile+EntryPoint[idx]+"_taint_result.txt")
        # Is_taint_pass.append(t_res)
        # 暂时再one and two 中实现了


        l1.append([t1,t2,t3])


def single_two():
    mkdir("single_two")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "single_two")
        bplfile = getreleativepath(bplfiles[idx], "single_two")
        boolbplfile = getreleativepath(boolbplfiles[idx], "single_two")
        bres = getreleativepath(boolbplres[idx], "single_two")

        t1 = generatebpl(sfile, EntryPoint[idx], bplfile)
        t2 = productbpl(bplfile, boolbplfile, NoTaint, BoolProduct, NoSplitAssert)
        t3 = verifybpl(boolbplfile, bres)

        Is_high_taint_2_pass.append(high_taint_pass(bres))
        l2.append([t1,t2,t3])


def chaifen_single_two():
    mkdir("chaifen_single_two")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "chaifen_single_two")
        bplfile = getreleativepath(bplfiles[idx], "chaifen_single_two")
        boolbplfile = getreleativepath(boolbplfiles[idx], "chaifen_single_two")
        bres = getreleativepath(boolbplres[idx], "chaifen_single_two")

        t1 = generatebpl(sfile, EntryPoint[idx], bplfile)
        t2 = productbpl(bplfile, boolbplfile, NoTaint, BoolProduct, SplitAssert)
        t3 = verifybpl(boolbplfile, bres)

        l2_1.append([t1,t2,t3])



def single_three():
    mkdir("single_three")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "single_three")
        bplfile = getreleativepath(bplfiles[idx], "single_three")
        shadowbplfile = getreleativepath(shadowbplfiles[idx], "single_three")
        sres = getreleativepath(shadowbplres[idx], "single_three")

        t1 = generatebpl(sfile, EntryPoint[idx], bplfile)
        t2 = productbpl(bplfile, shadowbplfile, NoTaint, ShadowProduct, NoSplitAssert)
        t3 = verifybpl(shadowbplfile, sres)

        Is_ct_verify_pass.append(high_taint_pass(sres))

        l3.append([t1,t2,t3])

def chaifen_single_three():
    mkdir("chaifen_single_three")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "chaifen_single_three")
        bplfile = getreleativepath(bplfiles[idx], "chaifen_single_three")
        shadowbplfile = getreleativepath(shadowbplfiles[idx], "chaifen_single_three")
        sres = getreleativepath(shadowbplres[idx], "chaifen_single_three")

        t1 = generatebpl(sfile, EntryPoint[idx], bplfile)
        t2 = productbpl(bplfile, shadowbplfile, NoTaint, ShadowProduct, SplitAssert)
        t3 = verifybpl(shadowbplfile, sres)
       
        l3_1.append([t1,t2,t3])


def one_and_two():
    mkdir("one_and_two")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "one_and_two")
        tmpll = getreleativepath(Tmpll[idx], "one_and_two")
        ktmpll = getreleativepath(Ktmpll[idx], "one_and_two")
        taintll = getreleativepath(Taint_ll[idx], "one_and_two")
        bplfile = getreleativepath(bplfiles[idx], "one_and_two")
        boolbplfile = getreleativepath(boolbplfiles[idx], "one_and_two")
        bres = getreleativepath(boolbplres[idx], "one_and_two")
        brecord = getreleativepath(sourcefile+EntryPoint[idx]+"1-2-record.txt", "one_and_two")



        t1 = clang(sfile)
        t2 = addkey(tmpll, ktmpll)
        t3 = phasar(ktmpll, Taint_entry[idx], Taint_config[idx])
        t4 = generatebpl(taintll, EntryPoint[idx], bplfile)
        t5 = productbpl(bplfile, boolbplfile, AcceptTaint, BoolProduct, NoSplitAssert, brecord)
        t6 = verifybpl(boolbplfile, bres)

        Is_high_taint_1_2_pass.append((high_taint_pass(bres)))
        locinfo = getloc_and_taintres_info(brecord)
        loc.append(locinfo[3])
        # 这里的all-taint信息不要了，因为不够准确
        taint_res.append(locinfo[1])
        Is_taint_pass.append(taint_pass(locinfo[1]))

        l4.append([t1,t2,t3,t4,t5,t6])


def one_and_three():
    mkdir("one_and_three")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "one_and_three")
        tmpll = getreleativepath(Tmpll[idx], "one_and_three")
        ktmpll = getreleativepath(Ktmpll[idx], "one_and_three")
        taintll = getreleativepath(Taint_ll[idx], "one_and_three")
        bplfile = getreleativepath(bplfiles[idx], "one_and_three")
        shadowbplfile = getreleativepath(shadowbplfiles[idx], "one_and_three")
        sres = getreleativepath(shadowbplres[idx], "one_and_three")

        t1 = clang(sfile)
        t2 = addkey(tmpll, ktmpll)
        t3 = phasar(ktmpll, Taint_entry[idx], Taint_config[idx])
        t4 = generatebpl(taintll, EntryPoint[idx], bplfile)
        t5 = productbpl(bplfile, shadowbplfile, AcceptTaint, ShadowProduct, NoSplitAssert)
        t6 = verifybpl(shadowbplfile, sres)

        l5.append([t1,t2,t3,t4,t5,t6])


def two_and_three():
    mkdir("two_and_three")
    for idx, sourcefile in enumerate(SourceFile):

        sfile = getreleativepath(sourcefile, "two_and_three")
        bplfile = getreleativepath(bplfiles[idx], "two_and_three")
        boolbplfile = getreleativepath(boolbplfiles[idx], "two_and_three")
        bres = getreleativepath(boolbplres[idx], "two_and_three")

        bplfile = getreleativepath(bplfiles[idx], "two_and_three")
        shadowbplfile = getreleativepath(shadowbplfiles[idx], "two_and_three")
        transhadowbplfile = getreleativepath(transhadowbplfiles[idx], "two_and_three")
        bres = getreleativepath(boolbplres[idx], "two_and_three")
        sres = getreleativepath(shadowbplres[idx], "two_and_three")
        brecord = getreleativepath(sourcefile+EntryPoint[idx]+"2-3-record.txt", "two_and_three")

        t1 = generatebpl(sfile, EntryPoint[idx], bplfile)
        t2 = productbpl(bplfile, boolbplfile, NoTaint, BoolProduct, SplitAssert)
        t3 = verifybpl(boolbplfile, bres)

        t4 = productbpl(bplfile, transhadowbplfile, NoTaint, ShadowProduct, NoSplitAssert)
        t5, t6 = transfer(bres, transhadowbplfile, shadowbplfile, brecord)
        t7 = verifybpl(shadowbplfile, sres)


        htres = get_high_taint_res(brecord)
        all_sensitive_pos.append(htres[0])
        high_taint_res_2_3.append(htres)

        l6.append([t1,t2,t3,t4,t5,t6,t7])


def one_and_two_and_three():
    mkdir("one_and_two_and_three")
    for idx, sourcefile in enumerate(SourceFile):



        sfile = getreleativepath(sourcefile, "one_and_two_and_three")
        bplfile = getreleativepath(bplfiles[idx], "one_and_two_and_three")
        boolbplfile = getreleativepath(boolbplfiles[idx], "one_and_two_and_three")
        bres = getreleativepath(boolbplres[idx], "one_and_two_and_three")

        bplfile = getreleativepath(bplfiles[idx], "one_and_two_and_three")
        shadowbplfile = getreleativepath(shadowbplfiles[idx], "one_and_two_and_three")
        transhadowbplfile = getreleativepath(transhadowbplfiles[idx], "one_and_two_and_three")
        bres = getreleativepath(boolbplres[idx], "one_and_two_and_three")
        sres = getreleativepath(shadowbplres[idx], "one_and_two_and_three")
        brecord = getreleativepath(sourcefile+EntryPoint[idx]+"1-2-record.txt", "one_and_two_and_three")
        srecord = getreleativepath(sourcefile+EntryPoint[idx]+"2-3-record.txt", "one_and_two_and_three")

        tmpll = getreleativepath(Tmpll[idx], "one_and_two_and_three")
        ktmpll = getreleativepath(Ktmpll[idx], "one_and_two_and_three")
        taintres = getreleativepath(sourcefile+EntryPoint[idx]+"_taint_result.txt", "one_and_two_and_three")
        taintll = getreleativepath(Taint_ll[idx], "one_and_two_and_three")




        t1 = clang(sfile)
        t2 = addkey(tmpll, ktmpll)
        t3 = phasar(ktmpll, Taint_entry[idx], Taint_config[idx], taintres)
        t4 = generatebpl(taintll, EntryPoint[idx], bplfile)
        t5 = productbpl(bplfile, boolbplfile, AcceptTaint, BoolProduct, SplitAssert, brecord)
        t6 = verifybpl(boolbplfile, bres)
        t7 = productbpl(bplfile, transhadowbplfile, AcceptTaint, ShadowProduct, NoSplitAssert)
        t8, t9 = transfer(bres, transhadowbplfile, shadowbplfile, srecord)
        t10 = verifybpl(shadowbplfile, sres)

        #locinfo 是一个list
        high_taint_res_1_2_3.append(get_high_taint_res(srecord))               
        l7.append([t1,t2,t3,t4,t5,t6,t7,t8,t9,t10])




# 有多列，写个函数处理方便一点
def addrows(df,ls, rowname = "default"):
    # 暂时别加，不方便做collect
    # df[rowname] = ""

    hangshu = len(ls)
    if isinstance(ls[0], str):
        lieshu = 1
    else:
        lieshu = len(ls[0])
    for i in range(lieshu):
        tls = []
        for j in range(hangshu):
            if isinstance(ls[0], str):
                tls.append(ls[j])
            else:
                tls.append(ls[j][i])
        # print(tls)
        df[rowname +" "+ str(i)] = tls

def  getonerow(df, ls, lieshu, rowname):
    hangshu = len(ls)
    # lieshu = len(ls[0])
    tls = []
    for i in range(hangshu):
        tls.append(ls[i][lieshu])
    df[rowname] = tls

# def runall():
#     readconfig()
#     single_one()
#     single_two()
#     chaifen_single_two()
#     single_three()
#     chaifen_single_three()
#     one_and_two()
#     one_and_three()
#     two_and_three()
#     one_and_two_and_three()   
    
#     total_time_of_each_phase()
#     collect_time()
#     collect_all_time()
#     stragety()
import threading
def runall():
    readconfig()


    threads = []
    t1 = threading.Thread(target=single_one)
    threads.append(t1)
    t2 = threading.Thread(target=single_two)
    threads.append(t2)
    t3 = threading.Thread(target=chaifen_single_two)
    threads.append(t3)
    t4 = threading.Thread(target=single_three)
    threads.append(t4)
    t5 = threading.Thread(target=chaifen_single_three)
    threads.append(t5)
    t6 = threading.Thread(target=one_and_two)
    threads.append(t6)
    t7 = threading.Thread(target=one_and_three)
    threads.append(t7)
    t8 = threading.Thread(target=two_and_three)
    threads.append(t8)
    t9 = threading.Thread(target=one_and_two_and_three)
    threads.append(t9)
    for i in threads:
        i.start()
    for i in threads:
        i.join()    

    total_time_of_each_phase()
    collect_time()
    collect_all_time()
    stragety()
    compare_verify()


total_1 = []
total_2 = []
total_2_s = []

#在低精度污点分析之后的bool验证时间
total_2_s_t = []
#不拆分的低精度污点分析之后的bool验证时间
total_2_t = []

total_3 = []
total_3_s = []
#1+2
total_4 = []
#1+3
total_5 = []
#2+3
total_6 = []
#1+2+3
total_7 = []
#1+2+2_s+3




def all_time(ls, res):
    for i in ls:
        all = 0
        for j in i:
            all = all + j
        res.append(all)

def total_time_of_each_phase():
    all_time(l1, total_1)
    all_time(l2, total_2)
    all_time(l3, total_3)
    all_time(l2_1, total_2_s)
    all_time(l3_1, total_3_s)
    all_time(l4, total_4)
    all_time(l5, total_5)
    all_time(l6, total_6)
    all_time(l7, total_7)

    for i in l7:
        all = 0
        all = all + i[3] + i[4] + i[5]
        total_2_s_t.append(all)

    for i in l4:
        all = 0
        all = all + i[3] + i[4] + i[5]
        total_2_t.append(all)


#特殊处理一下1+2 split, 需要从1+2+3 中获得这个时间
    

    


def collect_time():
    df = pd.DataFrame({"Filename": SourceFile, "Entry-point": EntryPoint})
    addrows(df, l1, "single_one")
    df["taint_verified?"] = Is_taint_pass
    addrows(df, l2, "single_two")
    df["Single_high_taint_pass?"] = Is_high_taint_2_pass
    df["taint_1+2_pass?"] = Is_high_taint_1_2_pass
    addrows(df, l2_1, "split_single_two")
    addrows(df, l3, "single_three")
    df["ct_verify_pass?"] = Is_ct_verify_pass

    addrows(df, l3_1, "split_single_three")
    addrows(df, l4, "one_and_two")
    addrows(df, l5, "one_and_three")
    addrows(df, l6, "two_and_three")
    addrows(df, l7, "one_and_two_and_three")
    addrows(df, loc, "loc")

    df["all_sensitive_pos"] = all_sensitive_pos
    df["taint_res"] = taint_res

    addrows(df, high_taint_res_2_3, "high_taint_res_2_3")
    addrows(df, high_taint_res_1_2_3, "high_taint_res_1_2_3")
    df.to_csv(basedir+"/detail.csv", index = False)

    # df2 = pd.DataFrame({"Filename": SourceFile, "Entry-point": EntryPoint})

def collect_all_time():
    df = pd.DataFrame({"Filename": SourceFile, "Entry-point": EntryPoint})
    df["single_one"] = total_1
    df["single_two"] = total_2
    df["single_three"] = total_3
    df["single_two_split"] = total_2_s
    df["single_three_split"] = total_3_s
    df["1+2"] = total_4
    df["1+3"] = total_5
    df["2+3"] = total_6
    df["1+2+3"] = total_7

    df.to_csv(basedir+"/all_time.csv", index = False)

# 策略1：使用不分裂的2.  策略2：使用分裂的2. 策略3：一开始不用1，使用不分裂的2. 策略4：一开始不用1，使用分裂的2.
def stragety():
    df = pd.DataFrame({"Filename": SourceFile, "Entry-point": EntryPoint})
    res1 = []
    res2 = []
    res3 = []
    res4 = []

    res5 = []
    df["ct_verify"] = total_3
    for idx, enu in enumerate(SourceFile):
        if Is_taint_pass[idx] == "Verified!":
           
            res1.append(total_1[idx])
            res2.append(total_1[idx])
        elif Is_high_taint_1_2_pass[idx] == "Verified!":
           
            res1.append(total_4[idx])
            res2.append(total_1[idx] + total_2_s_t[idx])
        else:
           
            res1.append(total_7[idx]+total_2_t[idx])
            res2.append(total_7[idx])

    for idx, enu in enumerate(SourceFile):
        if Is_high_taint_2_pass[idx] == "Verified!":
            res3.append(total_2[idx])
            res4.append(total_2_s[idx])
        else:
            res3.append(total_2[idx]+total_6[idx])
            res4.append(total_6[idx])

    for idx, enu in enumerate(SourceFile):
        if Is_taint_pass[idx] == "Verified!":
            res5.append(total_1[idx])
        else:
            res5.append(total_5[idx])

    df["1->2->3"] = res1
    df["1->2->3 with s"] = res2
    df["2->3"] = res3
    df["2->3 with s"] = res4
    df["1->3"] = res5

    df.to_csv(basedir+"/stragety.csv", index = False)

def compare_verify():
    df = pd.DataFrame({"Filename": SourceFile, "Entry-point": EntryPoint})
    getonerow(df, l3, 2, "ct-verify")
    getonerow(df, l5, 5, "1-3")
    getonerow(df, l6, 6, "2-3")
    getonerow(df, l7, 9, "1-2-3")
    




    df.to_csv(basedir+"/compare_verify.csv", index = False)


# 该策略下，如果single_one成功，就停止，否则就使用分裂2。 如果一加二成功，就停止，否则再使用3.




# def writetocsv():
#     with open(basedir+"/result.csv",'w',newline='') as f:
#         for i in range(len(lexample)):
#             onerow = [lexample[i], lentry[i], l1[i] ,l2[i], l3[i], l1_2[i],l1_3[i],l2_3[i], l1_2_3[i], locinfo[i][0], locinfo[i][1], locinfo[i][2], locinfo[i][3]]
#             writer = csv.writer(f)
#             writer.writerow(onerow)


#     with open(basedir+"/result2.csv",'w',newline='') as f:
#         for i in range(len(lexample)):
#             onerow = [lexample[i], lentry[i], l1[i],     t2_1[i], t2_2[i], t2_3[i],     t3_1[i], t3_2[i], t3_3[i],    t4_1[i], t4_2[i], t4_3[i],t4_4[i],     t5_1[i], t5_2[i], t5_3[i],t5_4[i],   t6_1[i], t6_2[i], t6_3[i],t6_4[i],t6_5[i], t6_6[i],           t7_1[i], t7_2[i], t7_3[i],t7_4[i],t7_5[i], t7_6[i],t7_7[i]]
#             writer = csv.writer(f)
#             writer.writerow(onerow) 




runall()
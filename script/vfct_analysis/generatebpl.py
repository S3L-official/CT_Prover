#! /usr/bin/python3
import os
import pandas as pd
import subprocess
import shlex
import time
import json
import threading

import sys




timelimit = "600"
errorlimit = "5"
UNROLL = "1"
LOOPLIMIT = "1"

PHASAR  ="/home/luwei/phasar/build/tools/phasar-llvm/phasar-llvm"
BAMPATH = "/home/luwei/bam-"

# 获取父目录名字 以及所在lib的名字
Source = os.path.basename(os.getcwd())
LIB = os.path.dirname(os.getcwd())
LIB = os.path.basename(LIB)
#entry里面存的是文件前缀
SourceFile = []
LIBS = []
entry = []
#存储所以最终的时间结果
#detail 是每一个小的步骤的时间消耗，total是整个算法的时间消耗，verifytime是算法中纯验证的时间消耗
detailtime = []
totaltime = []
verifytime = []

#####################
#因为是多线程运行
detailtime_1 = []
totaltime_1 = []
verifytime_1 = []

detailtime_2 = []
totaltime_2 = []
verifytime_2 = []

detailtime_2_s = []
totaltime_2_s = []
verifytime_2_s = []

detailtime_3 = []
totaltime_3 = []
verifytime_3 = []

detailtime_3_s = []
totaltime_3_s = []
verifytime_3_s = []


detailtime_1_2 = []
totaltime_1_2 = []
verifytime_1_2 = []

detailtime_1_2_s = []
totaltime_1_2_s = []
verifytime_1_2_s = []

detailtime_1_3 = []
totaltime_1_3 = []
verifytime_1_3 = []

detailtime_1_3_s = []
totaltime_1_3_s = []
verifytime_1_3_s = []
#####################

totaltime_1_2_3 = []



Is_taint_pass = []
Is_high_taint_2_pass = []
Is_high_taint_2_s_pass = []
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
allsens = []


AcceptTaint = True
NoTaint = False
BoolProduct = True
ShadowProduct = False
SplitAssert = True
NoSplitAssert = False

# 旧版的会有one_and_two_and_three()等的文件夹，现在不需要了给删除掉
def preprocess():
    runcommand("rm -rf one_and_two_and_three")
    # runcommand("rm -rf one_and_two_and_three-s")
    # runcommand("rm -rf two_and_three")
    # runcommand("rm -f totaltime2.csv")
    

# 允许客制化config
def readconfig():
    global timelimit, errorlimit, UNROLL, LOOPLIMIT
    # if not (os.path.exists(conf)):
    #     print("NO")
    if len(sys.argv) > 1:
        conf = sys.argv[1]
    else:
        conf = "../config.json"

    with open(conf,'r',encoding='utf8')as fp:
        global filenames, libs, cpath
        json_data = json.load(fp)

    if "UNROLL" in json_data:
        UNROLL = json_data["UNROLL"]
    
    if "LOOPLIMIT" in json_data:
        LOOPLIMIT = json_data["LOOPLIMIT"]

    if "timelimit" in json_data:
        timelimit = json_data["timelimit"]

    if "errorlimit" in json_data:
        errorlimit = json_data["errorlimit"]

    
def runcommand(command, file = subprocess.PIPE, workdir = os.getcwd()):
    print(command)
    print("")
    args = shlex.split(command)
    if file != subprocess.PIPE:
        with open(workdir+"/"+file, "w") as f:
            file = f
            st = time.time()
            process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True, cwd=workdir)
            process.wait()
            end = time.time()
    else:
        st = time.time()
        process = subprocess.Popen(args, stdout=file, stderr=subprocess.PIPE, text=True, cwd=workdir)
        process.wait()
        end = time.time()
    
    if(process.returncode != 0):
        print(process.communicate()[1])
    return end - st

def iterdir(dir):
    for root,dirs,files in os.walk(dir):
        for file in files:
            prefixname, extension = os.path.splitext(file)
            if extension == ".c":
                entry.append(prefixname)
                SourceFile.append(Source)
                LIBS.append(LIB)

def get_taint_flase_positive(analysistxt, boogiefile, workdir):
    runcommand("TaintFalseAlarmCheck.py " + analysistxt +" " + boogiefile, workdir=workdir)

def getloc_and_taintres_info(file):
    record = []
    with open(file, 'r') as f:
        lines = f.readlines()
        record.append(lines[4][:-1])  
        record.append(lines[6][:-1])   
        record.append(lines[8][:-1])   
        record.append(lines[10][:-1])    
    return record

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

#读取bam-991的结果
def get_high_taint_res(file):
    record = []
    with open(file, 'r') as f:
        lines = f.readlines()
        record.append(lines[1][:-1])  
        record.append(lines[3][:-1])   
    return record

def buildbech():
    args = "./compile.sh"
    restime = runcommand(args)

def getitem(item):
    file = item+".ll"
    kfile = item+"-k.ll"
    tfile = item+"-t.ll"
    taintentry = item +"_wrapper_t"
    taintconfig = item + ".json"
    bplentry = item +"_wrapper"
    boolbpl = item+"-bool.bpl"
    

def mkdir(abdir):
    if os.path.exists(abdir):
        process = subprocess.Popen(["rm", "-rf", abdir], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        process.wait()
    process = subprocess.Popen(["mkdir", abdir], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()
    #将wrapper拷贝到这个文件夹里面
    for item in entry:
        runcommand("cp " + item + ".ll " + abdir)

# #旧版的add key是为了不准确的指针分析做的，新版的是为了SVF的ir统一做的preprocess
# def addkey(irfile, irkfile, dir):
#     args = "addrestrict "+irfile+" "+irkfile
#     restime = runcommand(args, workdir=dir)
#     return restime

#旧版的add key是为了不准确的指针分析做的，新版的是为了SVF的ir统一做的preprocess
#其实不需要两个参数，只要一个就够了。
def addkey(irfile, irkfile, dir):
    args = "/home/luwei/newifds/SVF-example/bin/svf-ex "+irfile
    restime = runcommand(args, workdir=dir)
    return restime

# def addkey(irfile, irkfile, dir):
#     args = "addrestrict "+irfile+" "+irkfile
#     restime = runcommand(args, workdir=dir)
#     return restime

def phasar(tkfile, taintentry, taintconfig, outfile, workdir = os.getcwd()):
    phasar_option = PHASAR + " -m "+tkfile+ " -D ifds-taint --entry-points "+taintentry+ " --analysis-config "+taintconfig
    result = runcommand(phasar_option, outfile, workdir=workdir)
    # if resultfile == "null":
    #     result = runcommand(phasar_option)
    # else:
    #     with open(resultfile, "w") as outfile:
    #         result = runcommand(phasar_option, outfile)
    return result

def generatebpl(file, entry, smackout, workdir):
    args = "smack"+" -t --warn silent --verifier=boogie --entry-points "+ entry+" --unroll  "+UNROLL+" --loop-limit " +LOOPLIMIT + " "+ "-bpl "+ smackout+" " + file
    restime = runcommand(args, workdir=workdir)
    return restime

def productbpl(file, bamout, isaccept, isbool, issplit, workdir, recordfile = subprocess.PIPE):
    bamflg = 0
    if isaccept:
        bamflg = bamflg + 4
    if isbool:
        bamflg = bamflg + 2
    if issplit:
        bamflg = bamflg + 1
    
    bampth = BAMPATH + str(bamflg)
    restime = runcommand("ruby -I "+bampth+"/lib " +bampth+"/bin/bam --shadowing "+file +" -o "+bamout, recordfile, workdir = workdir)
    return restime

def verifybpl(file, resfile, workdir):
    args = "boogie /doModSetAnalysis /errorLimit " + errorlimit +" /timeLimit " + timelimit + " " +file
    restime = runcommand(args, resfile, workdir = workdir)
    return restime

#专门定制的verify。 errorlimit设定到1000
def specialverifybpl(file, resfile, workdir):
    args = "boogie /doModSetAnalysis /errorLimit " + "1000 " +" /timeLimit " + timelimit + " " +file
    restime = runcommand(args, resfile, workdir = workdir)
    return restime

#record 是bool版验证的结果， file是shadow product的结果。 file2是最后生成的文件
def transfer(record,file,file2, recordfile = subprocess.PIPE, workdir = os.getcwd()):
    # 需要配合bam991 一起使用
    args = "transBoolToShadow.py "+record+" "+file
    restime = runcommand(args, recordfile, workdir = workdir)
    args = "ruby -I /home/luwei/bam-991/lib /home/luwei/bam-991/bin/bam --process_mark "+ file + " -o " + file2
    restime2 = runcommand(args, workdir=workdir)
    return restime, restime2


def single_one():
    mkdir("single_one")
    lowtiant1 = []
    lowtiant2  =[]
    total = []
    for item in entry:
        file = item+".ll"
        tkfile = item+"-k.ll"
        taintentry = item +"_wrapper_t"
        taintconfig = item + ".json"
        outfile = item +"-taintres.txt"

        runcommand("cp " + taintconfig + " single_one")

        restime1 = addkey(file, tkfile, "single_one")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "single_one")

        lowtiant1.append(restime1)
        lowtiant2.append(restime2)
        total.append(restime1+restime2)

        
    totaltime_1.append(("1", total))
    detailtime_1.append(("add-key", lowtiant1))
    detailtime_1.append(("taint-analysis", lowtiant2))
    detailtime_1.append(("ept", []))
    

def single_two():
    mkdir("single_two")
    sigtwo1 = []
    sigtwo2 = []
    sigtwo3 = []
    total = []
    for item in entry:
        file = item + ".ll"
        boogieentry = item + "_wrapper"
        outfile = item + ".bpl"
        boolboogiefile = item + "-bool.bpl"
        boogieres = item + "-bool.txt"
        restime1 = generatebpl(file, boogieentry, outfile, "single_two")
        restime2 = productbpl(outfile, boolboogiefile, NoTaint, BoolProduct, NoSplitAssert,"single_two")
        restime3 = verifybpl(boolboogiefile, boogieres,"single_two")
        
        sigtwo1.append(restime1)
        sigtwo2.append(restime2)
        sigtwo3.append(restime3)
        total.append(restime1+ restime2 + restime3)

        Is_high_taint_2_pass.append(high_taint_pass("single_two/"+boogieres))

    totaltime_2.append(("2", total))
    detailtime_2.append(("2-generatebpl", sigtwo1))
    detailtime_2.append(("2-product", sigtwo2))
    detailtime_2.append(("2-verify", sigtwo3))
    detailtime_2.append(("ept129", []))

    verifytime_2.append(("2", sigtwo3))
    
def chaifen_single_two():
    mkdir("chaifen_single_two")
    sigtwo1 = []
    sigtwo2 = []
    sigtwo3 = []
    total = []
    for item in entry:
        file = item + ".ll"
        boogieentry = item + "_wrapper"
        outfile = item + ".bpl"
        boolboogiefile = item + "-bool.bpl"
        boogieres = item + "-bool.txt"
        restime1 = generatebpl(file, boogieentry, outfile, "chaifen_single_two")
        restime2 = productbpl(outfile, boolboogiefile, NoTaint, BoolProduct, SplitAssert,"chaifen_single_two")
        restime3 = verifybpl(boolboogiefile, boogieres,"chaifen_single_two")
        
        sigtwo1.append(restime1)
        sigtwo2.append(restime2)
        sigtwo3.append(restime3)
        total.append(restime1+ restime2 + restime3)

        # Is_high_taint_2_pass.append(high_taint_pass("chaifen_single_two/"+boogieres))

    totaltime_2_s.append(("2-s", total))
    detailtime_2_s.append(("2-s-generatebpl", sigtwo1))
    detailtime_2_s.append(("2-s-product", sigtwo2))
    detailtime_2_s.append(("2-s-verify", sigtwo3))
    detailtime_2_s.append(("ept1_s", []))

    verifytime_2_s.append(("2_s", sigtwo3))

    
def single_three():
    mkdir("single_three")
    sigtwo1 = []
    sigtwo2 = []
    sigtwo3 = []
    total = []
    for item in entry:
        file = item + ".ll"
        boogieentry = item + "_wrapper"
        outfile = item + ".bpl"
        boogiefile = item + "-shadow.bpl"
        boogieres =  item + "-shadow.txt"
        restime1 = generatebpl(file, boogieentry, outfile, "single_three")
        restime2 = productbpl(outfile, boogiefile, NoTaint, ShadowProduct, NoSplitAssert,"single_three")
        restime3 = verifybpl(boogiefile, boogieres,"single_three")
        
        sigtwo1.append(restime1)
        sigtwo2.append(restime2)
        sigtwo3.append(restime3)
        total.append(restime1+ restime2 + restime3)

        Is_ct_verify_pass.append(high_taint_pass("single_three/"+ boogieres))


    totaltime_3.append(("3", total))
    detailtime_3.append(("3-generatebpl", sigtwo1))
    detailtime_3.append(("3-product", sigtwo2))
    detailtime_3.append(("3-verify", sigtwo3))
    detailtime_3.append(("ept2", []))

    verifytime_3.append(("3", sigtwo3))


def chaifen_single_three():
    mkdir("chaifen_single_three")
    sigtwo1 = []
    sigtwo2 = []
    sigtwo3 = []
    total = []
    for item in entry:
        file = item + ".ll"
        boogieentry = item + "_wrapper"
        outfile = item + ".bpl"
        boogiefile = item + "-shadow.bpl"
        boogieres =  item + "-shadow.txt"
        restime1 = generatebpl(file, boogieentry, outfile, "chaifen_single_three")
        restime2 = productbpl(outfile, boogiefile, NoTaint, ShadowProduct, SplitAssert,"chaifen_single_three")
        restime3 = verifybpl(boogiefile, boogieres,"chaifen_single_three")
        
        sigtwo1.append(restime1)
        sigtwo2.append(restime2)
        sigtwo3.append(restime3)
        total.append(restime1+ restime2 + restime3)

        # Is_ct_verify_pass.append(high_taint_pass("chaifen_single_three/"+ boogieres))


    totaltime_3_s.append(("3-s", total))
    detailtime_3_s.append(("3-s-generatebpl", sigtwo1))
    detailtime_3_s.append(("3-s-product", sigtwo2))
    detailtime_3_s.append(("3-s-verify", sigtwo3))
    detailtime_3_s.append(("ept22", []))

    verifytime_3_s.append(("3-s", sigtwo3))
    


def one_and_two():
    mkdir("one_and_two")
    total = []
    total2 = []
    l1 = []
    l2 = []
    l3 = []
    l4 = []
    l5 = []
    for item in entry:
        file = item+".ll"
        tkfile = item+"-k.ll"
        taintentry = item +"_wrapper_t"
        taintconfig = item + ".json"
        outfile = item +"-taintres.txt"

        taintfile = item+"-t.ll"
        boogiefile = item + ".bpl"
        boolboogiefile = item + "-bool.bpl"
        analyres = item + "-1-2.txt"
        boogieentry = item + "_wrapper"

        #记录boogie代码行数，以及低精度污点分析是否以及完成
        record= item+"-record.txt"

        runcommand("cp " + taintconfig + " one_and_two")

        restime1 = addkey(file, tkfile, "one_and_two")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_two")
       
        restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_two")
        restime4 = productbpl(boogiefile, boolboogiefile, AcceptTaint, BoolProduct, NoSplitAssert,"one_and_two", record)
        restime5 = verifybpl(boolboogiefile, analyres,"one_and_two")

        l1.append(restime1)
        l2.append(restime2)
        l3.append(restime3)
        l4.append(restime4)
        l5.append(restime5)
        total.append(restime1+ restime2 + restime3 + restime4 + restime5)

        Is_high_taint_1_2_pass.append((high_taint_pass("one_and_two/"+ analyres)))
        locinfo = getloc_and_taintres_info("one_and_two/"+record)
        loc.append(locinfo[3])
        # 这里的all-taint信息不要了，因为不够准确
        taint_res.append(locinfo[1])
        Is_taint_pass.append(taint_pass(locinfo[1]))
        if taint_pass(locinfo[1]) == "Verified!":
            total2.append(restime1+restime2)
        else:
            total2.append(restime1+ restime2 + restime3 + restime4 + restime5)
        allsens.append(locinfo[0])

    #记录真实需要的时间
    totaltime_1_2.append(("1+2", total2))
    # totaltime_1_2.append(("1+2", total))
    detailtime_1_2.append(("1+2-addkey", l1))
    detailtime_1_2.append(("1+2-taint-analysis", l2))
    detailtime_1_2.append(("1+2-generatebpl", l3))
    detailtime_1_2.append(("1+2-product", l4))
    detailtime_1_2.append(("1+2-verify", l5))
    detailtime_1_2.append(("ept3", []))

    verifytime_1_2.append(("1+2", l5))


def one_and_two_s():
    mkdir("one_and_two_s")
    total = []
    total2 = []
    l1 = []
    l2 = []
    l3 = []
    l4 = []
    l5 = []
    for item in entry:
        file = item+".ll"
        tkfile = item+"-k.ll"
        taintentry = item +"_wrapper_t"
        taintconfig = item + ".json"
        outfile = item +"-taintres.txt"

        taintfile = item+"-t.ll"
        boogiefile = item + ".bpl"
        boolboogiefile = item + "-bool.bpl"
        analyres = item + "-1-2.txt"
        boogieentry = item + "_wrapper"

        #记录boogie代码行数，以及低精度污点分析是否以及完成
        record= item+"-record.txt"

        runcommand("cp " + taintconfig + " one_and_two_s")

        restime1 = addkey(file, tkfile, "one_and_two_s")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_two_s")
       
        restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_two_s")
        restime4 = productbpl(boogiefile, boolboogiefile, AcceptTaint, BoolProduct, NoSplitAssert,"one_and_two_s", record)
        restime5 = verifybpl(boolboogiefile, analyres,"one_and_two_s")
        #不需要记录时间的操作，方便自己检查的
        get_taint_flase_positive(analyres, boolboogiefile,"one_and_two_s")

        l1.append(restime1)
        l2.append(restime2)
        l3.append(restime3)
        l4.append(restime4)
        l5.append(restime5)
        total.append(restime1+ restime2 + restime3 + restime4 + restime5)

        # Is_high_taint_1_2_pass.append((high_taint_pass("one_and_two_s/"+ analyres)))
        locinfo = getloc_and_taintres_info("one_and_two_s/"+record)
        # loc.append(locinfo[3])
        # # 这里的all-taint信息不要了，因为不够准确
        # taint_res.append(locinfo[1])
        # Is_taint_pass.append(taint_pass(locinfo[1]))
        if taint_pass(locinfo[1]) == "Verified!":
            total2.append(restime1+restime2)
        else:
            total2.append(restime1+ restime2 + restime3 + restime4 + restime5)
        # allsens.append(locinfo[0])

    #记录真实需要的时间
    totaltime_1_2_s.append(("1+2_s", total2))
    # totaltime_1_2_s.append(("1+2-s", total))
    detailtime_1_2_s.append(("1+2-s-addkey", l1))
    detailtime_1_2_s.append(("1+2-s-taint-analysis", l2))
    detailtime_1_2_s.append(("1+2-s-generatebpl", l3))
    detailtime_1_2_s.append(("1+2-s-product", l4))
    detailtime_1_2_s.append(("1+2-s-verify", l5))
    detailtime_1_2_s.append(("ept3-s", []))

    verifytime_1_2_s.append(("1+2_s", l5))


def one_and_three():
    mkdir("one_and_three")
    total = []
    total2 = []
    l1 = []
    l2 = []
    l3 = []
    l4 = []
    l5 = []
    i = 0
    for item in entry:
        file = item+".ll"
        tkfile = item+"-k.ll"
        taintentry = item +"_wrapper_t"
        taintconfig = item + ".json"
        outfile =  item +"-taintres.txt"

        taintfile = item+"-t.ll"
        boogiefile = item + ".bpl"
        shadowlboogiefile = item + "-shadow.bpl"
        analyres = item + "-1-3.txt"
        boogieentry = item + "_wrapper"

        runcommand("cp " + taintconfig + " one_and_three")

        restime1 = addkey(file, tkfile, "one_and_three")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_three")
       
        restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_three")
        restime4 = productbpl(boogiefile, shadowlboogiefile, AcceptTaint, ShadowProduct, NoSplitAssert,"one_and_three")
        restime5 = verifybpl(shadowlboogiefile, analyres,"one_and_three")


        l1.append(restime1)
        l2.append(restime2)
        l3.append(restime3)
        l4.append(restime4)
        l5.append(restime5)
        total.append(restime1+ restime2 + restime3 + restime4 + restime5)

        if Is_taint_pass[i] == "Verified!":
            total2.append(restime1+restime2)
        else:
            total2.append(restime1+ restime2 + restime3 + restime4 + restime5)
        
        i = i + 1


    totaltime_1_3.append(("1+3", total2))
    # totaltime_1_3.append(("1+3", total))
    detailtime_1_3.append(("1+3-addkey", l1))
    detailtime_1_3.append(("1+3-taint-analysis", l2))
    detailtime_1_3.append(("1+3-generatebpl", l3))
    detailtime_1_3.append(("1+3-product", l4))
    detailtime_1_3.append(("1+3-verify", l5))
    detailtime_1_3.append(("ept4", []))

    verifytime_1_3.append(("1+3", l5))

def one_and_three_s():
    mkdir("one_and_three_s")
    total = []
    total2 = []
    l1 = []
    l2 = []
    l3 = []
    l4 = []
    l5 = []
    i = 0
    for item in entry:
        file = item+".ll"
        tkfile = item+"-k.ll"
        taintentry = item +"_wrapper_t"
        taintconfig = item + ".json"
        outfile =  item +"-taintres.txt"

        taintfile = item+"-t.ll"
        boogiefile = item + ".bpl"
        shadowlboogiefile = item + "-shadow.bpl"
        analyres = item + "-1-3.txt"
        boogieentry = item + "_wrapper"

        runcommand("cp " + taintconfig + " one_and_three_s")

        restime1 = addkey(file, tkfile, "one_and_three_s")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_three_s")
       
        restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_three_s")
        restime4 = productbpl(boogiefile, shadowlboogiefile, AcceptTaint, ShadowProduct, SplitAssert,"one_and_three_s")
        restime5 = verifybpl(shadowlboogiefile, analyres,"one_and_three_s")

        get_taint_flase_positive(analyres, shadowlboogiefile,"one_and_three_s")

        l1.append(restime1)
        l2.append(restime2)
        l3.append(restime3)
        l4.append(restime4)
        l5.append(restime5)
        total.append(restime1+ restime2 + restime3 + restime4 + restime5)

        if Is_taint_pass[i] == "Verified!":
            total2.append(restime1+restime2)
        else:
            total2.append(restime1+ restime2 + restime3 + restime4 + restime5)
        
        i = i + 1

    totaltime_1_3_s.append(("1+3_s", total2))
    # totaltime_1_3_s.append(("1+3_s", total))
    detailtime_1_3_s.append(("1+3_s-addkey", l1))
    detailtime_1_3_s.append(("1+3_s-taint-analysis", l2))
    detailtime_1_3_s.append(("1+3_s-generatebpl", l3))
    detailtime_1_3_s.append(("1+3_s-product", l4))
    detailtime_1_3_s.append(("1+3_s-verify", l5))
    detailtime_1_3_s.append(("ept44", []))

    verifytime_1_3_s.append(("1+3_s", l5))

# def two_and_three():
#     mkdir("two_and_three")
#     total = []
#     total2 = []
#     l1 = []
#     l2 = []
#     l3 = []
#     l4 = []
#     l5 = []
#     l6 = []
#     l7 = []
#     #为了定位is taint pass信息。
#     i = 0

#     for item in entry:
#         file = item + ".ll"
#         boogieentrypoint = item + "_wrapper"
#         boogiefile = item +".bpl"
#         boolboogiefile = item + "-bool.bpl"
#         tmpboogiefile = item + "-tmp.bpl"
#         shadowboogiefile = item + "-shadow.bpl"
#         boolanalyres =  item + "-bool.txt"
#         transferrecord =  item + "-trans.txt"
#         shadowanalyres =  item + "-shadow.txt"

#         t1 = generatebpl(file, boogieentrypoint, boogiefile, "two_and_three")
#         t2 = productbpl(boogiefile, boolboogiefile, NoTaint, BoolProduct, SplitAssert, "two_and_three")
#         t3 = specialverifybpl(boolboogiefile, boolanalyres, "two_and_three")

#         t4 = productbpl(boogiefile, tmpboogiefile, NoTaint, ShadowProduct, NoSplitAssert, "two_and_three")
#         t5, t6 = transfer(boolanalyres, tmpboogiefile, shadowboogiefile, transferrecord, "two_and_three")
#         t7 = verifybpl(shadowboogiefile, shadowanalyres, "two_and_three")

#         l1.append(t1)
#         l2.append(t2)
#         l3.append(t4)
#         l4.append(t4)
#         l5.append(t5)
#         l6.append(t6)
#         l7.append(t7)
#         total.append(t1+t2+t3+t4+t5+t6+t7)

#         htres = get_high_taint_res("two_and_three/"+transferrecord)
#         all_sensitive_pos.append(htres[0])
#         high_taint_res_2_3.append(htres[1])

#         if Is_high_taint_2_pass[i] == "Verified!":
#             total2.append(t1+t2+t3)
#         else:
#             total2.append(t1+t2+t3+t4+t5+t6+t7)
        
#         i = i + 1

#     totaltime_2_3.append(("2+3", total))
#     totaltime2_2_3.append(("2+3", total2))
#     detailtime_2_3.append(("2+3-generate", l1))
#     detailtime_2_3.append(("2+3-productbpl", l2))
#     detailtime_2_3.append(("2+3-verifybpl", l3))
#     detailtime_2_3.append(("2+3-productbpl-2", l4))
#     detailtime_2_3.append(("2+3-transfer-1", l5))
#     detailtime_2_3.append(("2+3-transfer-2", l6))
#     detailtime_2_3.append(("2+3-verify-2", l7))
#     detailtime_2_3.append(("ept5", []))

#     verifytime.append(("2+3", l7))





def one_and_two_and_three():
    mkdir("one_and_two_and_three")
    total = []
    total2 = []
    l1 = []
    l2 = []
    l3 = []
    l4 = []
    l5 = []
    l6 = []
    l7 = []
    l8 = []
    l9 = []
    i = 0
    for item in entry:
        file = item+".ll"
        tkfile = item+"-k.ll"
        taintentry = item +"_wrapper_t"
        taintconfig = item + ".json"
        outfile = item +"-taintres.txt"

        taintfile = item+"-t.ll"
        boogiefile = item + ".bpl"
        boolboogiefile = item + "-bool-0.bpl"
        tmpboogiefile = item + "-tmp.bpl"
        shadowboogiefile = item + "-shadow.bpl"
        analyres = item + "-1-2.txt"
        boogieentry = item + "_wrapper"
        trasnsres = item + "-trans.txt"
        finalres = item  + "-1-2-3.txt"

        runcommand("cp " + taintconfig + " one_and_two_and_three")

        restime1 = addkey(file, tkfile, "one_and_two_and_three")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_two_and_three")
       
        restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_two_and_three")
        restime4 = productbpl(boogiefile, boolboogiefile, AcceptTaint, BoolProduct, SplitAssert,"one_and_two_and_three")

        
        t6 = productbpl(boogiefile, tmpboogiefile, AcceptTaint, ShadowProduct, SplitAssert, "one_and_two_and_three")


    # totaltime2_1_2_3.append(("1+2+3", total2))
    # detailtime_1_2_3.append(("1+2+3-addkey", l1))
    # detailtime_1_2_3.append(("1+2+3-taint-analysis", l2))
    # detailtime_1_2_3.append(("1+2+3-generatebpl", l3))
    # detailtime_1_2_3.append(("1+2+3-product", l4))
    # detailtime_1_2_3.append(("1+2+3-verify", l5))
    # detailtime_1_2_3.append(("1+2+3-product2", l6))
    # detailtime_1_2_3.append(("1+2+3-transfer1", l7))
    # detailtime_1_2_3.append(("1+2+3-transfer2", l8))
    # detailtime_1_2_3.append(("1+2+3-verify2", l9))
    # detailtime_1_2_3.append(("ep23", []))

    # verifytime_1_2_3.append(("1+2+3", l9))


# def one_and_two_and_three_s():
#     mkdir("one_and_two_and_three-s")
#     total = []
#     total2 = []
#     l1 = []
#     l2 = []
#     l3 = []
#     l4 = []
#     l5 = []
#     l6 = []
#     l7 = []
#     l8 = []
#     l9 = []
#     i = 0
#     for item in entry:
#         file = item+".ll"
#         tkfile = item+"-k.ll"
#         taintentry = item +"_wrapper_t"
#         taintconfig = item + ".json"
#         outfile = item +"-taintres.txt"

#         taintfile = item+"-t.ll"
#         boogiefile = item + ".bpl"
#         boolboogiefile = item + "-bool.bpl"
#         tmpboogiefile = item + "-tmp.bpl"
#         shadowboogiefile = item + "-shadow.bpl"
#         analyres = item + "-1-2.txt"
#         boogieentry = item + "_wrapper"
#         trasnsres = item + "-trans.txt"
#         finalres = item  + "-1-2-3.txt"

#         runcommand("cp " + taintconfig + " one_and_two_and_three-s")

#         restime1 = addkey(file, tkfile, "one_and_two_and_three-s")
#         restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_two_and_three-s")
       
#         restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_two_and_three-s")
#         restime4 = productbpl(boogiefile, boolboogiefile, AcceptTaint, BoolProduct, SplitAssert,"one_and_two_and_three-s")
#         restime5 = specialverifybpl(boolboogiefile, analyres,"one_and_two_and_three-s")

        
#         t6 = productbpl(boogiefile, tmpboogiefile, AcceptTaint, ShadowProduct, SplitAssert, "one_and_two_and_three-s")
#         t7, t8 = transfer(analyres, tmpboogiefile, shadowboogiefile, trasnsres, "one_and_two_and_three-s")
#         t9 = verifybpl(shadowboogiefile, finalres, "one_and_two_and_three-s")

#         # high_taint_res_1_2_3.append(get_high_taint_res("one_and_two_and_three-s/"+trasnsres)[1])    

#         l1.append(restime1)
#         l2.append(restime2)
#         l3.append(restime3)
#         l4.append(restime4)
#         l5.append(restime5)
#         l6.append(t6)
#         l7.append(t7)
#         l8.append(t8)
#         l9.append(t9)
#         total.append(restime1+ restime2 + restime3 + restime4 + restime5 + t6 + t7 + t8 + t9)

#         if Is_taint_pass[i] == "Verified!":
#             total2.append(restime1+restime2)
#         elif Is_high_taint_1_2_pass[i] == "Verified!":
#             total2.append(restime1+ restime2 + restime3 + restime4 + restime5)
#         else:
#             total2.append(restime1+ restime2 + restime3 + restime4 + restime5 + t6 + t7 + t8 + t9)

#         i = i +1

#     totaltime_1_2_3_s.append(("1+2+3-s", total))
#     totaltime2_1_2_3_s.append(("1+2+3-s", total2))
#     detailtime_1_2_3_s.append(("1+2+3-s-addkey", l1))
#     detailtime_1_2_3_s.append(("1+2+3-s-taint-analysis", l2))
#     detailtime_1_2_3_s.append(("1+2+3-s-generatebpl", l3))
#     detailtime_1_2_3_s.append(("1+2+3-s-product", l4))
#     detailtime_1_2_3_s.append(("1+2+3-s-verify", l5))
#     detailtime_1_2_3_s.append(("1+2+3-s-product2", l6))
#     detailtime_1_2_3_s.append(("1+2+3-s-transfer1", l7))
#     detailtime_1_2_3_s.append(("1+2+3-s-transfer2", l8))
#     detailtime_1_2_3_s.append(("1+2+3-s-verify2", l9))

#     verifytime_1_2_3_s.append(("1+2+3-s", l9))
    



# tm 的每个元素是一个元组，元组里有两个元素，第一个元素是列名，第二个元素是要加入的列


def collcet_time(tm, csvname):
    df = pd.DataFrame({"LIB": LIBS, "Filename": SourceFile, "Entry-point": entry})
    #idx 用于增加空白列
    idx = 0
    for lie in tm:
        idx = idx + 1
        if lie[1] == []:
            df["ept"+str(idx)] = ''
        else:
            df[lie[0]] = lie[1]

    df.to_csv(csvname, index = False)


def collectinfo(): 
    totaltime.append(("loc", loc))
    totaltime.append(("all-sens pos", allsens)) 
    totaltime.append(("ct-verify pass?", Is_ct_verify_pass))

    totaltime.append(("Taint pass?", Is_taint_pass))
    totaltime.append(("taint res", taint_res))
    
    totaltime.append(("High taint pass?", Is_high_taint_2_pass))
    # totaltime.append(("Hightaint res", high_taint_res_2_3))

    totaltime.append(("Is_high_taint_1_2_pass", Is_high_taint_1_2_pass))
    # totaltime.append(("1+2 res", high_taint_res_1_2_3))


def analysis():

    cmd = "findbuginboogie.py "
    for item in entry:
        cmd  =  cmd + str(item) + " "
    runcommand(cmd, workdir="one_and_two_and_three")
# def collcetinfo2(totaltime2): 
#     totaltime2.append(("loc", loc))
#     totaltime2.append(("all-sens pos", allsens)) 
#     totaltime2.append(("ct-verify pass?", Is_ct_verify_pass))

#     totaltime2.append(("Taint pass?", Is_taint_pass))
#     totaltime2.append(("taint res", taint_res))
    
#     totaltime2.append(("High taint pass?", Is_high_taint_2_pass))
#     totaltime2.append(("Hightaint res", high_taint_res_2_3))

#     totaltime2.append(("Is_high_taint_1_2_pass", Is_high_taint_1_2_pass))
#     totaltime2.append(("1+2 res", high_taint_res_1_2_3))

        
# def run():
#     #预处理步骤
#     readconfig()
#     iterdir(os.getcwd())
#     buildbech()

#     #开始正式实验
#     single_one()
#     single_two()
#     single_three()
#     chaifen_single_three()
#     one_and_two()
#     one_and_three()
#     two_and_three()
#     one_and_two_and_three()
#     one_and_two_and_three_s()
    

#     collcetinfo()
#     #收集时间
#     collcet_time(totaltime, "totaltime.csv")
#     collcet_time(totaltime2, "totaltime2.csv")
#     collcet_time(detailtime, "detailtime.csv")
#     collcet_time(verifytime, "verifytime.csv")


def runall():
	preprocess()
    #预处理步骤
	readconfig()
	iterdir(os.getcwd())
	buildbech() 
	one_and_two_and_three()
    analysis()


# run()
runall()
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

Is_taint_pass = []
Is_high_taint_pass = []
Is_all_taint_pass = []
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
ress = []
ress2 = []
shadowress = []
shadowress2 = []


AcceptTaint = True
NoTaint = False
BoolProduct = True
ShadowProduct = False
SplitAssert = True
NoSplitAssert = False


    

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
    with open(file, 'r') as f:
        lines = f.readlines()
    return lines[6][:-1]


# def getloc_and_taintres_info(file):
#     record = []
#     with open(file, 'r') as f:
#         lines = f.readlines()
#         record.append(lines[4][:-1])  
#         record.append(lines[6][:-1])   
#         record.append(lines[8][:-1])   
#         record.append(lines[10][:-1])    
#     return record

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
    global bechtime
    args = "./compile.sh"
    bechtime = runcommand(args)

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






def one_and_three():
    mkdir("one_and_three")
    one_and_three = []
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
        shadowboogiefile = item + "-shadow-0.bpl"
        analyres = item + "-1-2.txt"
        boogieentry = item + "_wrapper"
        trasnsres = item + "-trans.txt"
        finalres = item  + "-1-2-3.txt"

        runcommand("cp " + taintconfig + " one_and_three")

        restime1 = addkey(file, tkfile, "one_and_three")
        restime2 = phasar(tkfile, taintentry, taintconfig, outfile, "one_and_three")
       
        restime3 = generatebpl(taintfile, boogieentry, boogiefile, "one_and_three")
        restime4 = productbpl(boogiefile, shadowboogiefile, AcceptTaint, ShadowProduct, SplitAssert,"one_and_three")

        
        # t6 = productbpl(boogiefile, tmpboogiefile, AcceptTaint, ShadowProduct, SplitAssert, "one_and_three")
        totaltime = restime1 + restime2+bechtime
        islowtaintpass = 0
        if(getloc_and_taintres_info("one_and_three/"+outfile) == "0"):
            islowtaintpass = 1
        
        if not islowtaintpass:
            #首先加上restime4和restime4 
            totaltime = totaltime + restime3 + restime4
            new_path = "/home/luwei/script/vfct_analysis"
            sys.path.append(new_path)
            import findbuginboogie_shadow
            analres = findbuginboogie_shadow.findbuginboogie(item, "one_and_three","shadow")
            totaltime = totaltime+analres[0]

        res = [LIB,Source,item,totaltime]
        one_and_three.append(res)
    
    df=pd.DataFrame(one_and_three, columns=['LIB', 'crypto','algoritm','1+3'])
    df.to_csv("./one_and_three/one_and_three.csv")
    

    


#这里只做生成boogie代码
def chaifen_single_three():
    mkdir("chaifen_single_three")
    chaaifen_three = []
    sigtwo1 = []
    sigtwo2 = []
    sigtwo3 = []
    total = []
    for item in entry:
        file = item + ".ll"
        boogieentry = item + "_wrapper"
        outfile = item + ".bpl"
        boogiefile = item + "-shadow-0.bpl"
        boogieres =  item + "-shadow.txt"
        restime1 = generatebpl(file, boogieentry, outfile, "chaifen_single_three")
        restime2 = productbpl(outfile, boogiefile, NoTaint, ShadowProduct, SplitAssert,"chaifen_single_three")
        # restime3 = verifybpl(boogiefile, boogieres,"chaifen_single_three")
        
        # sigtwo1.append(restime1)
        # sigtwo2.append(restime2)
        # sigtwo3.append(restime3)
        # total.append(restime1+ restime2 + restime3)

        # Is_ct_verify_pass.append(high_taint_pass("chaifen_single_three/"+ boogieres))

        
        # shadowress.append(res)
        new_path = "/home/luwei/script/vfct_analysis"
        sys.path.append(new_path)
        import findbuginboogie_shadow
        analres = findbuginboogie_shadow.findbuginboogie(item,"chaifen_single_three","shadow")
        totaltime = restime1+restime2+analres[0]
        res = [LIB,Source,item,totaltime]
        shadowress.append(totaltime)
        shadowress2.append([LIB,Source,item,]+analres)
        chaaifen_three.append(res)

    df=pd.DataFrame(chaaifen_three, columns=['LIB', 'crypto','algoritm','3'])
    df.to_csv("./chaifen_single_three/chaifen_single_three.csv")

    

# 这里只做污点分析，生成boogie代码
def one_and_two_and_three():
    mkdir("one_and_two_and_three")
    one_and_two_and_three = []
    dt = []
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
        totaltime = restime1 + restime2+bechtime
        islowtaintpass = 0
        if(getloc_and_taintres_info("one_and_two_and_three/"+outfile) == "0"):
            islowtaintpass = 1
        
        if not islowtaintpass:
            #首先加上restime4和restime4 
            totaltime = totaltime + restime3 + restime4 + t6
            new_path = "/home/luwei/script/vfct_analysis"
            sys.path.append(new_path)
            import findbuginboogie
            analres = findbuginboogie.findbuginboogie(item)
            totaltime = totaltime + analres[0] + analres[4] + analres[5]

            info = [LIB,Source,item,totaltime]
            detailtime = [restime1 + restime2+bechtime,restime3+restime4+analres[0], t6+analres[4]+analres[5]]
            dt.append([LIB,Source,item]+ detailtime)
            one_and_two_and_three.append(info)

    df=pd.DataFrame(one_and_two_and_three, columns=['LIB', 'crypto','algoritm','1+2+3'])
    df.to_csv("./one_and_two_and_three/one_and_two_and_three.csv")
    df=pd.DataFrame(dt, columns=['LIB', 'crypto','algoritm','1', 'product1','product2'])
    df.to_csv("./one_and_two_and_three/one_and_two_and_three_detail.csv")

        # import findbuginboogie_shadow
        # findbuginboogie_shadow.findbuginboogie(entry)

        
            






def collect_time():
    for i in range(len(ress)):
        ress[i].append(shadowress[i])
    df=pd.DataFrame(ress, columns=['LIB', 'crypto','algoritm','ourmethod','ct-verif'])
    df.to_csv("./one_and_two_and_three/total.csv")
    df=pd.DataFrame(ress2,columns=['LIB', 'crypto','algoritm','Bool-vf-time','Errorinv-bool','Error-pos-bool','Rounds','Trans','Shadow-vf-time','Errorinv-shadow','Error-pos-shadow','Rounds'])
    df.to_csv("./one_and_two_and_three/detail.csv")
    df=pd.DataFrame(shadowress2,columns=['LIB', 'crypto','algoritm','Shadow-vf-time','Errorinv-shadow','Error-pos-shadow','Rounds'])
    df.to_csv("./chaifen_single_three/detail.csv")
    # df=pd.DataFrame(shadowress, columns=['LIB', 'crypto','algoritm','shadow-generatebpl'])
    # df.to_csv("./chaifen_single_three/shadow-generate.csv")

    # d1=pd.read_csv("./one_and_two_and_three/generate.csv", index_col=0)
    # d2=pd.read_csv("./chaifen_single_three/shadow-generate.csv", index_col = 0)
    # d3=pd.read_csv("./one_and_two_and_three/verify.csv", index_col=0)
    # d4=pd.read_csv("./chaifen_single_three/shadow-verify.csv", index_col=0)
    # # d1.columns = ['taint-analysis','generatebpl']
    # # d2.columns = ['shadowgenerate.bpl']
    # mgdata = pd.concat([d1,d3,d2,d4], axis=1)
    # mgdata.to_csv("detail.csv")
    







# 启动找boogie 分析找bug过程。
def analysis():
    ...



    # cmd = "findbuginboogie.py "
    # for item in entry:
    #     cmd  =  cmd + str(item) + " "
    # runcommand(cmd, workdir="one_and_two_and_three")
    # cmd = "findbuginboogie-shadow.py "
    # for item in entry:
    #     cmd  =  cmd + str(item) + " "
    # runcommand(cmd, workdir="chaifen_single_three")



def runall():
    #预处理步骤
	readconfig()
	iterdir(os.getcwd())
	buildbech()
	# one_and_three()
	# chaifen_single_three()
	one_and_two_and_three()

	# analysis()
	# collect_time()




if __name__ == "__main__":
    runall()
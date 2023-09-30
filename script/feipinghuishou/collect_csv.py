#! /usr/bin/python3
import os
import pandas as pd
import subprocess
import shlex
lsdetail = []
lstotal = []
lsstragety = []

def iterdir(dir):
    for root,dirs,files in os.walk(dir):
        for file in files:
            # filename = os.path.join(root, file)
            # name, type = os.path.splitext(filename)
            if(file == "detail.csv"):
                filename = os.path.join(root, file)
                lsdetail.append(filename)
            if(file == "stragety.csv"):
                filename = os.path.join(root, file)
                lsstragety.append(filename)
            if(file == "all_time.csv"):
                filename = os.path.join(root, file)
                lstotal.append(filename)



def collect_csv():
    df1 = pd.read_csv(lsdetail[0], index_col=0)
    for file in lsdetail[1:]:
        df2 = pd.read_csv(file, index_col=0)
        df1 = pd.concat((df1, df2))
    df1.to_csv("detail.csv", mode='w')

    df1 = pd.read_csv(lstotal[0], index_col=0)
    for file in lstotal[1:]:
        df2 = pd.read_csv(file, index_col=0)
        df1 = pd.concat((df1, df2))
    df1.to_csv("total.csv", mode='w')

    df1 = pd.read_csv(lsstragety[0], index_col=0)
    for file in lsstragety[1:]:
        df2 = pd.read_csv(file, index_col=0)
        df1 = pd.concat((df1, df2))
    df1.to_csv("stragety.csv", mode='w')


def yubei():
    args = shlex.split("rm detail.csv")
    process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()

    args = shlex.split("rm total.csv")
    process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()

    args = shlex.split("rm stragety.csv")
    process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()

yubei()
iterdir(os.getcwd())
collect_csv()
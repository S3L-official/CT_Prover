#! /usr/bin/python3
import os
import pandas as pd
import subprocess
import shlex
lsdetail = []
lstotal = []
lstotal2 = []
lsverifytime = []

def iterdir(dir):
    for root,dirs,files in os.walk(dir):
        for file in files:
            # filename = os.path.join(root, file)
            # name, type = os.path.splitext(filename)
            if(file == "one_and_two_and_three.csv"):
                filename = os.path.join(root, file)
                lsdetail.append(filename)
            if(file == "one_and_three.csv"):
                filename = os.path.join(root, file)
                lsverifytime.append(filename)
            if(file == "one_and_two_and_three_detail.csv"):
                filename = os.path.join(root, file)
                lstotal.append(filename)
            # if(file == "totaltime2.csv"):
            #     filename = os.path.join(root, file)
            #     lstotal2.append(filename)



def collect_csv():
    df1 = pd.read_csv(lsdetail[0], index_col=0)
    for file in lsdetail[1:]:
        df2 = pd.read_csv(file, index_col=0)
        df1 = pd.concat((df1, df2))
    df1.to_csv("one_and_two_and_three.csv", mode='w')

    df1 = pd.read_csv(lsverifytime[0], index_col=0)
    for file in lsverifytime[1:]:
        df2 = pd.read_csv(file, index_col=0)
        df1 = pd.concat((df1, df2))
    df1.to_csv("one_and_three.csv", mode='w')

    df1 = pd.read_csv(lstotal[0], index_col=0)
    for file in lstotal[1:]:
        df2 = pd.read_csv(file, index_col=0)
        df1 = pd.concat((df1, df2))
    df1.to_csv("one_and_two_and_three_detail.csv", mode='w')

    # df1 = pd.read_csv(lstotal2[0], index_col=0)
    # for file in lstotal2[1:]:
    #     df2 = pd.read_csv(file, index_col=0)
    #     df1 = pd.concat((df1, df2))
    # df1.to_csv("totaltime2.csv", mode='w')

    # df1 = pd.read_csv(lsverifytime[0], index_col=0)
    # for file in lsverifytime[1:]:
    #     df2 = pd.read_csv(file, index_col=0)
    #     df1 = pd.concat((df1, df2))
    # df1.to_csv("verifytime.csv", mode='w')


def yubei():
    args = shlex.split("rm one_and_three.csv")
    process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()

    args = shlex.split("rm one_and_two_and_three.csv")
    process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    process.wait()

    # args = shlex.split("rm totaltime.csv")
    # process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    # process.wait()

    # args = shlex.split("rm totaltime2.csv")
    # process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    # process.wait()

yubei()
iterdir(os.getcwd())
collect_csv()
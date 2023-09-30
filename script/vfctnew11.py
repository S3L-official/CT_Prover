#! /usr/bin/python3
import os
import pandas as pd
import subprocess
import shlex
import time
import json
import threading

import sys


arg1 = sys.argv[1]



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



command1 = ""
#! /usr/bin/python3
import subprocess
with open("2.txt", "w") as outfile:  
    process = subprocess.Popen("tt.py", stdout=outfile, stderr=subprocess.PIPE, text=True)
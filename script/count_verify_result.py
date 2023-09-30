#! /usr/bin/python3
import sys
import re
arg1 = sys.argv[1]


record = []


with open(arg1, 'r') as f:
    lines = f.readlines()

    record.append(lines[4][:-1])  
    record.append(lines[6][:-1])   
    record.append(lines[8][:-1])   
    record.append(lines[10][:-1])    
    n1 = lines[4]
    n2 = lines[6]
    n3 = lines[8]
    n4 = lines[10]

print(type(record[0]))
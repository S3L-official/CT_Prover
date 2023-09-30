#! /usr/bin/python3
import os
import csv

def process_directory(directory):
    data_items = []
    for root, dirs, files in os.walk(directory):
        if "single_one" in dirs:
            single_one_path = os.path.join(root, "single_one")
            process_single_one(single_one_path, data_items)
        if "single_two" in dirs:
            single_one_path = os.path.join(root, "single_two")
            process_single_two(single_one_path, data_items)
        if "single_three" in dirs:
            single_one_path = os.path.join(root, "single_three")
            process_single_three(single_one_path, data_items)
        if "one_and_two" in dirs:
            single_one_path = os.path.join(root, "one_and_two")
            process_one_and_two(single_one_path, data_items)
        if "one_and_three" in dirs:
            single_one_path = os.path.join(root, "one_and_three")
            process_one_and_three(single_one_path, data_items)
    save_to_csv(data_items)

def process_single_one(single_one_path, data_items):
    for root, dirs, files in os.walk(single_one_path):
        for file in files:
            if file.endswith("taintres.txt"):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    lines = f.readlines()
                    if len(lines) >= 7:
                        line_7 = lines[6].strip()
                        if line_7 == "0":
                            record_data(root, file, "taint pass", data_items)
                        else:
                            record_data(root, file, "taint no pass", data_items)


def process_single_two(single_two_path, data_items):
    for root, dirs, files in os.walk(single_two_path):
        for file in files:
            if file.endswith("bool.txt"):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    lines = f.readlines()
                    if len(lines) >= 2:
                        line_2 = lines[1].strip()
                        if "1 verified, 0 errors" in line_2:
                            record_data(root, file, "bool pass", data_items)
                            break
                        line_3 = lines[2].strip()
                        if "time out" in line_3:
                            record_data(root, file, "bool time out", data_items)
                        else:
                            record_data(root, file, "bool no pass", data_items)
                    else:
                        record_data(root, file, "bool no result", data_items)

def process_single_three(single_three_path, data_items):
    for root, dirs, files in os.walk(single_three_path):
        for file in files:
            if file.endswith("shadow.txt"):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    lines = f.readlines()
                    if len(lines) >= 2:
                        line_2 = lines[1].strip()
                        if "1 verified, 0 errors" in line_2:
                            record_data(root, file, "shadow pass", data_items)
                            break
                        line_3 = lines[2].strip()
                        if "time out" in line_3:
                            record_data(root, file, "shadow time out", data_items)
                        else:
                            record_data(root, file, "shadow no pass", data_items)
                    else:
                        record_data(root, file, "shadow no result", data_items)

def process_one_and_two(one_and_two_path, data_items):
    for root, dirs, files in os.walk(one_and_two_path):
        for file in files:
            if file.endswith("1-2.txt"):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    lines = f.readlines()
                    if len(lines) >= 2:
                        line_2 = lines[1].strip()
                        if "1 verified, 0 errors" in line_2:
                            record_data(root, file, "1+2 pass", data_items)
                            break
                        line_3 = lines[2].strip()
                        if "time out" in line_3:
                            record_data(root, file, "1+2 time out", data_items)
                        else:
                            record_data(root, file, "1+2 no pass", data_items)
                    else:
                        record_data(root, file, "1+2 no result", data_items)

def process_one_and_three(one_and_three_path, data_items):
    for root, dirs, files in os.walk(one_and_three_path):
        for file in files:
            if file.endswith("1-3.txt"):
                file_path = os.path.join(root, file)
                with open(file_path, 'r') as f:
                    lines = f.readlines()
                    if len(lines) >= 2:
                        line_2 = lines[1].strip()
                        if "1 verified, 0 errors" in line_2:
                            record_data(root, file, "1+3 pass", data_items)
                            break
                        line_3 = lines[2].strip()
                        if "time out" in line_3:
                            record_data(root, file, "1+3 time out", data_items)
                        else:
                            record_data(root, file, "1+3 no pass", data_items)
                    else:
                        record_data(root, file, "no result", data_items)

def record_data(directory, filename, status, data_items):
    parent_directory = os.path.basename(os.path.dirname(directory))
    data_items.append([parent_directory, filename, status])

def save_to_csv(data_items):
    with open("verify_res.csv", 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["Parent Directory", "File Name", "Status"])
        writer.writerows(data_items)
    print("结果已保存到 verify_res.csv 文件中")

# 测试代码
directory_path = input("请输入目录路径: ")
process_directory(directory_path)

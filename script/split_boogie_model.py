#!/usr/bin/python3
import sys
def save_segment(segment_content, segment_num):
    filename = f"segment{segment_num}.txt"
    with open(filename, "w") as file:
        file.write(segment_content)
    print(f"Segment {segment_num} saved to {filename}")

def main():
    # input_filename = input("Please enter the boogie result file:")
    input_filename = sys.argv[1]
    segment_num = 1
    segment_content = ""

    with open(input_filename, "r") as file:
        for line in file:
            if "might not hold" in line:
                if segment_content:
                    save_segment(segment_content, segment_num)
                    segment_num += 1
                    segment_content = ""
            segment_content += line

        # Save the last segment if it exists
        if segment_content:
            save_segment(segment_content, segment_num)

if __name__ == "__main__":
    main()

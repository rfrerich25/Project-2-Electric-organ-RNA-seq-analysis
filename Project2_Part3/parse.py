#!/usr/bin/env python

import argparse
def get_args():
    parser = argparse.ArgumentParser(description="Program for assemblies")
    parser.add_argument("-f", "--filename", help="The filename", required=True, type=str)
    return parser.parse_args()

args = get_args()

#get to flag
mapped = 0
unmapped = 0
with open(args.filename, "r") as fh:
    for line in fh:
        if line.startswith("@"):
            continue
        else:
            line = line.strip("\n").split("\t")
            read_name = line[0]
            flag = int(line[1])
            if((flag & 4) != 4):
                #mapped
                if((flag & 256) != 256):
                    #not secondarily aligned
                    mapped += 1
            else:
                if((flag & 256) != 256):
                    unmapped += 1
#count number of reads correctly mapped
print(mapped)
#count number of reads not mapped
print(unmapped)
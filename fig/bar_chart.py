#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt
plt.rc('font', family='IPAGothic', size=16)
import sys
import csv


def error(*items):
  print(*items, file=sys.stderr)
  exit(1)


def main(csv_file, png_file):
  with open(csv_file, newline='') as f:
    labels = next(csv.reader(f))
    results = [float(real_num) for real_num in next(csv.reader(f))]

  if len(labels) != len(results):
    error("invalid csv file format")
    exit()

  WIDTH = 2 / 3
  COLOR_LIST = ["#ff8888", "#ff4444", "#44ff44"]

  figure, axis = plt.subplots()
  for index, result in enumerate(results):
    plt.bar([index], [result], WIDTH, color=COLOR_LIST[index])
    index += 1

  axis.set_ylabel("ラベルの推定精度/%")
  axis.set_xticks(np.arange(len(labels)) + WIDTH / 2)
  axis.set_xticklabels(labels)
  figure.patch.set_facecolor("white")
  plt.savefig(png_file)


if __name__ == "__main__":
  if len(sys.argv) != 3:
    error("usage: {} <csv file> <png file>".format(sys.argv[0]))
  main(sys.argv[1], sys.argv[2])

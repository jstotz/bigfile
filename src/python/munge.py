import sys

for line in sys.stdin:
  print ",".join([str(int(field) ** 2) for field in line.split(',')])
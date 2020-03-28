import sys

if len(sys.argv) > 1:
    LIMIT = int(sys.argv[1])
else:
    LIMIT = 1000000

for i in range(LIMIT):
    # do stuff here
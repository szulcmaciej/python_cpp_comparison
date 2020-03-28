import sys

if len(sys.argv) > 1:
    LIMIT = int(sys.argv[1])
else:
    LIMIT = 1000000

counter = 0
for i in range(LIMIT):
    counter = i % 3

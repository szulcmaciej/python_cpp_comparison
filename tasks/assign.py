import sys

if len(sys.argv) > 1:
    LIMIT = int(sys.argv[1])
else:
    LIMIT = 1000000

class Example:
    def __init__(self):
        self.counter = 0

for i in range(LIMIT):
    e = Example()
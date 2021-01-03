import sys
import numpy as np

if len(sys.argv) > 1:
    LIMIT = int(sys.argv[1])
else:
    LIMIT = 1000000


np.random.seed(0)

size = LIMIT
A, B = np.random.random((size, size)), np.random.random((size, size))

# Matrix multiplication
N = 20
for i in range(N):
    np.dot(A, B)
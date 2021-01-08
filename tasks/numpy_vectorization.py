import sys

import time
import numpy as np

if len(sys.argv) > 1:
    LIMIT = int(sys.argv[1])
else:
    LIMIT = 1000000

a = np.random.rand(LIMIT)
b = np.random.rand(LIMIT)

# for-loop
tic = time.time()
z = 0
for i in range(len(a)):
    z += a[i] * b[i]
print(z)
toc = time.time()

elapsed = toc - tic
print(f'for-loop: {elapsed / 1000} ms')

# vectorized
tic = time.time()
c = np.dot(a, b)
print(c)
toc = time.time()

elapsed = toc - tic
print(f'np.dot: {elapsed / 1000} ms')

#! /bin/bash


TASK_NAME=numpy_test
TASK_SIZE=64

BASE_PATH=tasks

g++ ${BASE_PATH}/${TASK_NAME}.cpp -o ${BASE_PATH}/${TASK_NAME}

# touch results.txt
echo Task name: $TASK_NAME > results.txt
echo Task size: $TASK_SIZE >> results.txt

#CPP
echo 'C++ timing'
/usr/bin/time -f %E -o results.txt --append ${BASE_PATH}/${TASK_NAME} ${TASK_SIZE}
echo 'done'
tail -n 1 results.txt

#PYTHON
echo 'Python timing'
/usr/bin/time -f %E -o results.txt --append python3.7 ${BASE_PATH}/${TASK_NAME}.py ${TASK_SIZE}
echo 'done'
tail -n 1 results.txt

#PYPY
echo 'PyPy timing'
/usr/bin/time -f %E -o results.txt --append pypy ${BASE_PATH}/${TASK_NAME}.py ${TASK_SIZE}
echo 'done'
tail -n 1 results.txt

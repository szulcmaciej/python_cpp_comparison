#! /bin/bash


TASK_NAME=assign
TASK_SIZE=10000000


BASE_PATH=tasks

g++ ${BASE_PATH}/${TASK_NAME}.cpp -o ${BASE_PATH}/${TASK_NAME}

# for i in {1..5}
# do
#    echo "Welcome $i times"
# done

# touch results.txt
echo Task name: $TASK_NAME > results.txt
echo Task size: $TASK_SIZE >> results.txt

#CPP
echo 'C++ timing'
/usr/bin/time -f %E -o results.txt --append ${BASE_PATH}/${TASK_NAME} ${TASK_SIZE}
echo 'done'

#PYTHON
echo 'Python timing'
/usr/bin/time -f %E -o results.txt --append python3.7 ${BASE_PATH}/${TASK_NAME}.py ${TASK_SIZE}
echo 'done'
#! /bin/bash

TASKS_PATH=tasks
TASK_NAME=$1

# create python file
cp task_templates/template.py ${TASKS_PATH}/${TASK_NAME}.py

# create c++ file
cp task_templates/template.cpp ${TASKS_PATH}/${TASK_NAME}.cpp

# update run config

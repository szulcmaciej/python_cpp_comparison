#! /bin/bash

TASKS_PATH=tasks
TASK_NAME=$1

# create python file
cp task_templates/python_template.py ${TASKS_PATH}/${TASK_NAME}.py

# create c++ file
cp task_templates/cpp_template.py ${TASKS_PATH}/${TASK_NAME}.cpp

# update run config

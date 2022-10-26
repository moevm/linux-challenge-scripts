#!/bin/bash


# Usage
# ./ task_dir_path image

# Task_dir structure
# /task_files/
# /test.py
# /install_task.sh

task_dir_path=$1
image=${2:-"osll/challenge-dbms:20171129"}

docker run -it --rm --volume=${task_dir_path}/task_files:/task_files --volume=${task_dir_path}/test.py:/root/pytest_reporter/test.py --name=task_container  ${image} /task_files/install_task.sh 


#!/bin/bash

docker exec task_container python3 -m pytest --assert plain -qq --tb no /root/pytest_reporter/test.py

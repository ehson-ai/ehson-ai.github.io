#!/bin/bash
python3 -m pytest test_math.py
if [ $? -eq 0 ]; then
    echo "Tests passed. Deploying..."
    # 여기에 배포 명령어 추가
else
    echo "Tests failed. Deployment aborted."
fi

#!/bin/sh

pip install dvc
pip install 'dvc[gs]'
pip install torch==1.8.0 torchvision==0.9.0

python setup.py build develop

echo "Create google.json in the root directory:"
read content
echo "$content" >> ./google.json

dvc pull

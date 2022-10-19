#!/bin/sh

echo "First create google.json in the root directory. Press Enter to confirm."
read content

pip install dvc
pip install 'dvc[gs]'
pip install torch==1.8.0 torchvision==0.9.0

python setup.py build develop

dvc remote modify --local gcp credentialpath 'google.json'
dvc pull

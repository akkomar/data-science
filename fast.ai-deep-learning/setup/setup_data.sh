#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ssh -i ~/.ssh/aws-key-fast-ai.pem ubuntu@$instanceUrl << EOF
  mkdir data && cd data
  wget -nc http://www.platform.ai/data/dogscats.zip
  sudo apt-get --assume-yes install unzip
  unzip -q dogscats.zip
EOF

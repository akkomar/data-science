#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ssh -i ~/.ssh/aws-key.pem ubuntu@$instanceIp << EOF
  git clone https://github.com/fastai/courses.git
  cp courses/deeplearning1/nbs/* nbs/
  cd nbs
  wget -nc http://www.platform.ai/data/dogscats.zip
  sudo apt-get --assume-yes install unzip
  unzip -q dogscats.zip
EOF

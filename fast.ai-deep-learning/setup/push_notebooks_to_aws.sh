#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rsync -avz --progress -r -e 'ssh -i ~/.ssh/aws-key-fast-ai.pem' notebooks ubuntu@$instanceUrl:~

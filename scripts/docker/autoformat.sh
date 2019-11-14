#/bin/bash
#
# autoformat.sh
# 
# Runs all autoformaters
# Run this from CI job docker container
set -ex

echo 'Running isort'
isort -rc /mnt/ml-docker-test

echo 'Running black'
black /mnt/ml-docker-test

echo 'Finished auto formatting'

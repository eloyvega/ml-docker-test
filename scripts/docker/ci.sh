#/bin/bash
# 
# Local tests of CI jobs
# Run this from CI job docker container
set -ex

echo 'Running black'
black --check /mnt/ml-docker-test

echo 'Running flake'
flake8 /mnt/ml-docker-test

echo 'Running pytest'
pytest /mnt/ml-docker-test

echo 'Finished tests'

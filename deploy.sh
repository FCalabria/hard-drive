#!/bin/sh

set -e

cd src
hugo
cd ..
git add .
git reset -- src/*
git commit -m "[Automated deploy]"
git push

exit 0
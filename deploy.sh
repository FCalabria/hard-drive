#!/bin/sh

set -e

cd src
hugo
cd ..
git add -u .
git reset -- src/*
git commit -m "[Automated deploy]"
git push

exit 0
#!/bin/bash

# begin

echo "Checking that all 3 directories' Test::Kit's are the same..."

md5sum */lib/Test/Kit.pm

echo "----------------------------------------------------------"

# 01-test-aggregate

echo "01-test-aggregate"

cd "01-test-aggregate"
./test.sh
cd .. ;

echo "----------------------------------------------------------"

# 02-main

echo "02-main"

cd "02-main"
prove -l *.t
cd ..

echo "----------------------------------------------------------"

# 03-packages

echo "03-packages"

cd "03-packages"
prove -l *.t
cd ..

echo "----------------------------------------------------------"

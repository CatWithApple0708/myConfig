#!/bin/bash

__dir=`which $0`
dirPath=`dirname $__dir`
cp ${dirPath}/src/Makefile ${dirPath}/src/Makefile.build .


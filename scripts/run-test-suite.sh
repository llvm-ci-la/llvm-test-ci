#!/bin/bash
BUILD_TEST_SUITE=$BUILDS_DIR/$BUILD_DIR

cd $BUILD_TEST_SUITE

ulimit -s unlimited
$BUILDS_DIR/build-llvm/bin/llvm-lit . -v
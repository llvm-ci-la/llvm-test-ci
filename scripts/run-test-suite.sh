#!/bin/bash
ulimit -s unlimited
$BUILDS_DIR/build-llvm/bin/llvm-lit . -v
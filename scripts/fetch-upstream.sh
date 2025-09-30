#!/bin/bash
echo "====== FETCH LLVM UPSTREAM START ******"
cd $LLVM_SOURCE_DIR
git clean -ffd 
git checkout main
git reset --hard HEAD
git pull
git log -1
echo "****** FETCH LLVM UPSTREAM END ======"

echo "====== FETCH TEST-SUITE UPSTREAM START ******"
cd $TEST_SUITE_SOURCE_DIR
git clean -ffd 
git checkout main
git reset --hard HEAD
git pull
git log -1
echo "****** FETCH TEST-SUITE UPSTREAM END ======"

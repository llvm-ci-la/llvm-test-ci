#!/bin/bash

BUILD_LLVM=$BUILDS_DIR/build-llvm

mkdir -p $BUILD_LLVM
cd $BUILD_LLVM
cmake $LLVM_SOURCE_DIR/llvm \
  -DCMAKE_CXX_COMPILER=clang++ \
  -DCMAKE_C_COMPILER=clang \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_USE_LINKER=lld \
  -DBUILD_SHARED_LIBS=true \
  -DLLVM_TARGETS_TO_BUILD=LoongArch \
  -DLLVM_ENABLE_PROJECTS="clang;flang;lld" \
  -DLLVM_ENABLE_RUNTIMES=compiler-rt \
  -G Ninja 

ninja -v

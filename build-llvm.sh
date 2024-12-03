#!/usr/bin/env bash

LLVM_PROJECT_DIR=~/WORK/llvm-project

build_llvm()
{
  if ! test -d ${LLVM_PROJECT_DIR}/build; then
    mkdir ${LLVM_PROJECT_DIR}/build
    pushd ${LLVM_PROJECT_DIR}/build
    OS=`uname -s`
    echo "OS =" ${OS}

    cmake -GNinja \
    -DLLVM_OPTIMIZED_TABLEGEN=ON \
    -DLLVM_TARGETS_TO_BUILD="X86;Mips" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DBUILD_SHARED_LIBS=ON \
    -DLLVM_ENABLE_PROJECTS=clang ../llvm

    time ninja -j 1
    popd
  fi
}

pushd ${LLVM_PROJECT_DIR}
build_llvm
popd
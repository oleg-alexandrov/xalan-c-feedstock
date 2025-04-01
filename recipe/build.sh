#!/bin/bash
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release\
  -D CMAKE_INSTALL_PREFIX=$PREFIX\
  -D CMAKE_PREFIX_PATH=$PREFIX \
  $SRC_DIR
make -j $CPU_COUNT install

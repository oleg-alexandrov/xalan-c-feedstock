#!/bin/bash

# This should be a patch
perl -pi -e "s#CMAKE_CXX_STANDARD\s+\d+#CMAKE_CXX_STANDARD 17#g" CMakeLists.txt 

mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release\
  -D CMAKE_INSTALL_PREFIX=$PREFIX\
  -D CMAKE_PREFIX_PATH=$PREFIX \
  -D CMAKE_POLICY_VERSION_MINIMUM=3.5\
  -D CMAKE_C_FLAGS="-Wno-error" \
  -D CMAKE_CXX_FLAGS="-Wno-error -fpermissive -std=gnu++17"  \
  -DCMAKE_VERBOSE_MAKEFILE=ON\
  -DCMAKE_CXX_STANDARD=17\
  $SRC_DIR
make -j $CPU_COUNT install


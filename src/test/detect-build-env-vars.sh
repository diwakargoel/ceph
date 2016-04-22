#!/bin/bash

#if ceph vars exist do this
if [ -n "$CEPH_BUILD_DIR" ] && [ -n "$CEPH_ROOT" ] && [ -n "$CEPH_BIN" ] && [ -n "$CEPH_LIB" ]; then
  echo "Enivronment Variables Already Set"
elif [ -e .libs ] && [ -z "$CEPH_BUILD_DIR" ]; then
  echo "Build System Autotools, Environment Variables Not All Set"
  export CEPH_ROOT=".."
  export CEPH_BUILD_DIR="."
  export CEPH_BIN="."
  export CEPH_LIB=".libs"
  export PATH=.:$PATH 
  #LD_LIBRARY_PATH=".libs"
  #PYTHONPATH=${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/cython_modules/lib.linux-x86_64-2.7:${CMAKE_SOURCE_DIR}/src/pybind)
else 
  echo "Enivronment Variables Not All Set"
fi


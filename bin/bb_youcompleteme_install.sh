#!/bin/bash
# This builds YouCompleteMe with fuzzy-string and snippet autocompletion.
# It does not include sematic auto-completion, since not all compiler tools are
# deployed to GNRL Linux machines.

# Run this script with:
# $ LOCUM_ARCH=linux locum bb_youcomplete_install.sh
# The resulting binaries (built on the build farm) will work on any GNRL Linux machine.

source /opt/rh/devtoolset-2/enable

rm -rf ~/.ycm_build && mkdir ~/.ycm_build && cd ~/.ycm_build || exit 1

cmake -G "Unix Makefiles" \
    -DPYTHON_LIBRARY=/opt/bb/lib64/libpython2.7.so \
    -DPYTHON_INCLUDE_DIR=/opt/bb/include/python2.7/ \
    . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp

cmake --build . --target ycm_core --config Release

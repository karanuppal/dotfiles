#!/bin/bash
# WORDS OF CAUTION:
# This will slow down vim startup time considerably on the Bloomberg dev machines.
# This builds YouCompleteMe with fuzzy-string and snippet autocompletion;
# it does not include sematic auto-completion, since not all compiler tools are
# deployed to GNRL Linux machines.

# Run this script as:
# $ LOCUM_ARCH=linux locum bb_youcomplete_install.sh
source /opt/rh/devtoolset-2/enable

rm -rf ~/.ycm_build && mkdir ~/.ycm_build && cd ~/.ycm_build

cmake -G "Unix Makefiles" \
    -DPYTHON_LIBRARY=/opt/swt/lib64/libpython2.7.so \
    -DPYTHON_INCLUDE_DIR=/opt/swt/include/python2.7/ \
    . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp

cmake --build . --target ycm_core --config Release

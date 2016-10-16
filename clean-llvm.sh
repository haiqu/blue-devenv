#!/bin/bash
#*******************************************************************************
#   Ledger Blue - Misc
#   (c) 2016 Ledger
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#*******************************************************************************
INSTALL_DIR=$PWD/clang-arm-fropi
# Linux
rm -f $INSTALL_DIR/lib/*.a
# Windows
rm -f $INSTALL_DIR/lib/*.lib
rm -f $INSTALL_DIR/bin/llvm-*
rm -f $INSTALL_DIR/lib/clang/*/lib/linux/libclang_rt*
rm -fr $INSTALL_DIR/include
find $INSTALL_DIR/bin -not -name "clang*" -exec rm -f {} \;
rm $INSTALL_DIR/bin/clang-check $INSTALL_DIR/bin/clang-format
#Dafuq?
#cd ../..
rm -rf llvm-build
#For fuck's sake don't delete this!
#rm -rf llvm


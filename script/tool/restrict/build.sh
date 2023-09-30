#!/bin/bash
clang-12 `llvm-config-12 --cxxflags` -Wl,-znodelete -fno-rtti -fPIC -shared luweiRestrict.cpp -o luweiRestrict.so `llvm-config-12 --ldflags`
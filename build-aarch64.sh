#!/bin/bash
./configure --dest-cpu=arm64 --openssl-no-asm
make -j100 # this will fail
sed -i '/-m64/d' out/deps/v8/tools/gyp/*.mk
make -j100


#!/bin/bash -e

#ld=/home/ben/trees/binutils-gdb/gold/ld-new
ld=ld.gold
ld=$HOME/trees/llvm/build/bin/ld.lld
#ld=ld.bfd

$ld \
    -r \
    -T merge_sections.ld \
    -o out.o \
    \
    Concurrent.o Base.o Err.o

objdump -Dx out.o | grep -A 10 r1Cy


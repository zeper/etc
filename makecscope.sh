#!/bin/bash
rm cscope.files cscope.out
find . \( -name '*.c' -o -name '*.cpp"' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print >> cscope.files
cscope -b -i cscope.files

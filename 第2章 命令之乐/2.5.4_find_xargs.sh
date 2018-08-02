#! /bin/bash
# find配合xargs使用,将-print0与find结合使用，以字符null分割输出 

find . -type f -name '*.html' -print0 | xargs -0 rm -f

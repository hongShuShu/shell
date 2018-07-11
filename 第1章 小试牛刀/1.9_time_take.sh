#! /bin/bash
# timetake.sh

start=$(date +%s)
echo "Command exec..."

end=$(date +%s)
let result=end-start
dif=$((end - start))
echo Time taken to execute $result seconds.

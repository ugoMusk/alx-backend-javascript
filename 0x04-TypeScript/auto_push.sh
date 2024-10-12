#!/usr/bin/env bash
#echo git_auto_push_script >> ../.gitignore
list=`ls -rR ./*`
for i in $list; if [[ -f $i && ! -d $i ]]; then
do n=$(grep -oE "^|\.[a-z]{1,5}$" <<< $i) && bn=$(basename -s "$n" $i) && git add $i && git commit -m "submit solution for the $bn task" && git push && sleep 6;done

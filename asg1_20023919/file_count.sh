#!bin/bash
file_count(){
filepath=$1
if [[ e $filepath ]]
then
    find . ! -name . -prune -print | grep -c /$filepath
fi
}
file_count $1
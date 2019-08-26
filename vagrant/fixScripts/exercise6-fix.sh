#!/bin/bash
#add fix to exercise6-fix here


# validate num of args
if [ "$#" -lt 2 ]; then
    echo "Please provide atleast 2 args"
    exit 2
fi

# check on which server the script is running 
server=$(hostname)
[[ $server = "server1" ]] && host="server2" || host="server1"

# the dest folder is the lasp parametr
dest_folder=${@: -1}

# files is all args exept from last
files=${@:1:$#-1}

# claculate size
size=$(ls -l $files | awk '{sum += $5} END {print sum}')

# copy files to dest host and print size in bytes
script -q -c "scp $files vagrant@$host:$dest_folder" > /dev/null && echo $size

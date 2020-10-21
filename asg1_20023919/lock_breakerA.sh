#!bin/bash
lock_breakerA(){
$pinlength=$1
$location=$2
$store=$3
while [ $n -lt $pinlength ]
do 
pwd[n]=9
n=$(($n+1))
done
maxlength=$( printf "%d" "${pwd[@]}")
$count='seq -w 0 $maxlength'
correct=""
for pw in {$count}; do 
    hash='./hashtxt.sh $pw'
	unzip -o -P $hash $2 -d $2 >/dev/null 2>&1 && correct=$pw && echo "Password Found ! it is $pw" && break 
done
if [ -z $correct ]; then echo "password not find"; fi
}
lock_breakerA $1
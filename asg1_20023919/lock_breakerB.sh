#!bin/bash
lock_breakerB(){
$file=$1
$unzip=$2
$store=$3
pws='cut -d, -f2 < $1'
correct=""
for pw in $pws
do
	hash='./hashtxt.sh $pw'
	unzip -o -P $hash $2 -d 'dirname $2' >/dev/null 2>&1 && correct=$pw && echo "Password Found ! it is $pw" && break 
done
if [ -z $correct ]; then echo "password not find"; fi	
}
lock_breakerB $1
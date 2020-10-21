#!bin/bash
folder_unlocker(){
$file=$1
$unzip=$2
$store=$3
validate=$(find $1 | wc -l)
validation=$(find $2 | wc -l)
if [ $validate -eq 1| $validation -eq 1]
then
emp=$(find $2 -maxdepth 1 -type f -name "*.zip")
Max=$(find $2 -maxdepth 1 -type f -name "*.zip"|wc -l)
count=0
paths=($(echo $emp | tr " " "\n"))
IFS=","
while read f1 f2
do
pass[$n]=$f2
n=$(($n+1))
done < $1
echo " File,Password" > $3
for path in "${paths[@]}"
do
check=0
for pw in "${pass[@]}"
do
code=$(hash $pw)
unzip -o -P $hsh $2 -d 'dirname $2' >/dev/null 2>&1 && correct=$pw && echo "Password Found for ${paths[@]}! it is ${pass[@]}" && break 
elif [$validate -eq 0]
then
echo "Error!! The password list $1 NOT exist.\nPlease check and enter a correct path."
elif [$validation -eq 0]
then
echo "Error!! Directory $2 NOT exist.\nPlease check and enter a correct Directory path."
fi
}
folder_unlocker $1
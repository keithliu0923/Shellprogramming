#!bin/bash
file_locker(){
$pinlength=$1
$filezip=$2
$store=$3
$password = './pwd_gen.sh $pinlength'
$hash = './hashtxt.sh $password'
zip --password $hash $2 "$2".zip && rm $2 && echo $password > $store
}
file_locker $1
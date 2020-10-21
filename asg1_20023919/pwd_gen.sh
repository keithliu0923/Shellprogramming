#!bin/bash
pwd_gen(){
$pinlength=$1
if [ $pinlength -eq 1 ];
then                                
    tr -cd "[:digit:]" < /dev/urandom | head -c $pinlength
fi
}
pwd_gen $1
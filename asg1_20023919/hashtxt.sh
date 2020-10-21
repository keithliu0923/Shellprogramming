#!bin/bash
hashtxt(){
$string=$1
echo -n $string | sha256sum
}
hashtxt $1
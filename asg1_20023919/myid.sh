#!/bin/bash
myid(){
if [ $1 -eq 'id' ]
then 
    echo '20023919'
elif [ $1 -eq 'name' ]
    echo 'Liu Tin Nok, Keith'
fi
}
myid $1
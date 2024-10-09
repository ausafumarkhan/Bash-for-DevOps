#!/bin/bash

log(){
 local message="${@}"
 if [ "${verbose}" == 'true' ]
 then
    echo "${message}"
 fi
}

verbose='true'
echo "verbose = "${verbose}""

log 'This is completed'


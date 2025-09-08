#!/bin/bash

# This script can be run on multiple hosts and allow to recognize the computer name 
# in order to ping it

setupenv(){
    if [ "$OSTYPE" = ""]
    then 
        ostype
    fi

    NAME=`uname -n`
    case $OSTYPE in 
        "LINUX" )
            PING=/usr/sbin/ping
        ;;
        "FREEBSD" )
            PING=/sbin/ping
        ;;
        "SOLARIS" )
            PING=/usr/sbin/ping
        ;;
        *)
        ;;
    esac
}
#!/bin/echo Warning: this library should be sourced!
# ostype() define OSTYPE variable to current operating system
ostype(){
    osname=`uname -s`
    # Assume we do not know what this is
    OSTYPE=UNKNOWN
    case $osname in
        "FreeBSD") OSTYPE="FreeBSD"
        ;;
        "SunOS") OSTYPE="SunOS"
        ;;
        "Linux") OSTYPE="Linux"
        ;;
    esac
    return 0
}
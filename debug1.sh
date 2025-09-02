#!/bin/bash

# We going to use set alongside -x as one the way to debug your script
# One of the function of set is to turn on and off various options that are available in the shell
# By running the your script, each line of output will be preceded by a plus-sign (+) prompt to 
# designate it as part of the trace output. Double plus sign (++) means the commands from the running shell are being executed
# in a subshell.

set -x 
echo -n "Can you write device drivers? "
read answer
answer=`echo $answer | tr [a-z] [A-Z]`
if [ $answer = Y ]
then
    echo "Wow, you must very skilled"
else
    echo "Neither can I, I'm just an example shell script"
fi

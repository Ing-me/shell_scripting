#!/bin/bash
debug=1

# Another way to debug your code is to set a debug variable near the beginning
# of the script. This variable will be tested during script execution and the 
# debug statements will be either displayed or suppressed based on the variable's value
 
 test $debug -gt 0 && echo "Debug is on"
 echo -n "Can you write device drivers? "
 read answer
 test $debug -gt 0 && echo "The answer is $answer"
 answer=`echo $answer | tr [a-z] [A-Z]`
 if [ $answer = Y ]
 then 
    echo "Wow, you must be very skilled"
    test $debug -gt 0 && echo "The answer is $answer"
else
    echo "Neither can I, I am just an example shell script"
    test $debug -gt 0 && echo "The answer is $answer"
fi

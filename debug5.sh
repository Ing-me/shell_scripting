#!/bin/bash

# In this exercise we are going to debug our code with $?. It can supply differents values
# such as 0 or 1 etc. 0 means everything is ok otherwise there is a problem

alert(){
    if [ $1 -ne 0 ]
    then
        echo "Warning: $2 did not complete succesfully. " >&2
        exit $1
    else    
        echo "Info: $2 completed successfully" >&2
    fi
}

FROM="peterleon21@gmail.com"
TO="peterleon21@gmail.com"
FILE=/var/log/messages
cat $LOG | mail -s "$FROM attempting to get $FILE" $TO 
alert $? "Mail of $LOG to $TO"
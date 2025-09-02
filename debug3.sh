#!/bin/bash

# Another way to debug your code is to utilize either echo or print. And place them in key position
# in order to determine where the error is.

echo -n "Can you write device drivers? "
read answer
answer=`echo $answer | tr [a-z] [A-Z]`
if [ $answer = Y ]
then
    echo "Wow, you must very skilled"
# I put it here
echo this is the answer: $answer
else
    echo "Neither can I, I'm just an example shell script"
echo this is the answer: $answer
fi
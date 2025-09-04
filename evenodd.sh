
evenodd(){
    # Determine odd/even status by last digit
    LAST_DIGIT=`echo $1 | sed 's/\(.*\)\(.\)$/\2/'`
    # LAST_DIGIT="{$1: -1}"
}
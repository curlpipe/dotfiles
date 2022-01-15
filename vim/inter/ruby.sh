dir=$1
IFS=

function trap_ctrlc () {
    echo
    echo "Program was interrupted, Press enter to exit"
    read
    exit 2
}

if [ "$key" = "" ]; then
    trap "trap_ctrlc" 2
    irb -r $dir --simple-prompt
    echo
    echo "Program finished execution, Press enter to exit"
    read
fi


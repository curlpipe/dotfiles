dir=$1
IFS=

function trap_ctrlc () {
    echo
    echo "Program was interrupted, Press enter to exit"
    read
    exit 2
}

rustc $1 -o ./out

echo "Press enter to run or any other key to exit"
read -n 1 key
if [ "$key" = "" ]; then
    trap "trap_ctrlc" 2
    ./out
    echo
    echo "Program finished execution, Press enter to exit"
    read
fi


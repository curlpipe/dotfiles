dir=$1
IFS=

function trap_ctrlc () {
    echo
    echo "Program was interrupted, Press enter to exit"
    read
    exit 2
}

cd $1
make

echo "Press enter to run or any other key to exit"
read -n 1 key
if [ "$key" = "" ]; then
    trap "trap_ctrlc" 2
    ./a.out
    echo
    echo "Program finished execution, Press enter to exit"
    read
fi


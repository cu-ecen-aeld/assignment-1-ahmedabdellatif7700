#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: two arguments required"
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")" || {
    echo "Error: could not create file"
    exit 1
}

echo "$writestr" > "$writefile" || {
    echo "Error: could not create file"
    exit 1
}
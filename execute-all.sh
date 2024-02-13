#!/bin/bash

# Get a list of immediate subdirectories
subdirectories=$(find . -maxdepth 1 -type d | grep -E -v '/\.' | sort)

execute-all() {
    # Iterate through subdirectories
    for dir in $subdirectories; do
        if [ "$dir" != "." ]; then
            echo "Enter $dir:"
            cd "$dir" || exit 1
            nix-shell --pure --run "bash execute.sh"
            echo "--------------------------"
            cd ..
        fi
    done
}

echo -n > output.txt
execute-all >>output.txt 2>&1
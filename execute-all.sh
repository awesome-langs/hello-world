#!/bin/bash

subdirectories=$(find . -maxdepth 1 -type d | grep -E -v '/\.' | sort)

execute-all() {
    for dir in $subdirectories; do
        if [ "$dir" != "." ]; then
            echo "Enter $dir:"
            cd "$dir" || exit 1
            nix-shell --pure --run "bash execute.sh" --keep "http_proxy https_proxy"
            echo "--------------------------"
            cd ..
        fi
    done
}

echo -n > output.txt
execute-all >>output.txt 2>&1
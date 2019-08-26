#!/bin/bash
delDomain () {
    toDelete=$1
    tmp=$(mktemp)
    while read line; do
        if [[ $line != *$toDelete* ]]; then
            printf "%s\n" "$line"
        fi
    done < /etc/hosts > "$tmp" && mv "$tmp" /etc/hosts
}

delDomain www.ascii-art.de


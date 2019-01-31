#!/usr/bin/env bash


getname() {
    name=$(echo $1 | awk -F/ '{print $NF}')
    echo $name
}

parsename() {
    filename=$(echo $1 | cut -d '.' -f 1)
    text=$(echo $filename | sed -e 's/[0-9]*//g')
    split=$(echo $text | sed -e 's/[A-Z]/ &/g')
    msg=$(echo $split | sed -e 's/\-/ by /g')
    echo $msg
}

pushfile() {
    cp $1 books/
    git add books/$3
    git commit -m "$2"
    git push origin master
}

while IFS= read -r line || [[ -n "$line" ]]; do
    prefix="Add "
    fname=$(getname $line)
    commit_message="$prefix$(parsename $fname)"
    pushfile $line "$commit_message" $fname
done < "${1:-/dev/stdin}"

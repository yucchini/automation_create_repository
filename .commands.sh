#!/bin/zsh

function create() {
    set -a
    source .env
    set +a
    ruby github.rb $1
    cd
    cd $FILEPATH$1
    git init
    git remote add origin git@github.com:$USERNAME/$1.git
    touch README.md
    git add .
    git commit -m 'Initial Commit'
    git push -u origin master
    code . # if you don't VSCode, please change this line.
}

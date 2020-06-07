#!bin/zsh

function create() {
  cd
  source ~/Program/cli/auto_github_repo/.env # 読み込めてない
  python ./Program/cli/auto_github_repo/create.py $1 # 読み込めてない　多分引数も渡せてない
  cd $FILEPATH$1
  git init
  git remote add origin git@github.com:$USERNAME/$1.git
  touch README.md
  git add .
  git commit -m 'Initial Commit'
  git push -u origin master
  code . # if you don't VSCode, please change this line.
}

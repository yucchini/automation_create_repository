## Automate Git and GitHub tredious tasks using CLI

### Preparation
```
$ git clone https://github.com/yucchini/automate_project_initialization.git
$ cd automate_project_initialization
$ bundle install
$ touch .env
```

Environment variables in .env file
```
USERNAME='your github username'
GITHUB_ACCESS_TOKEN='your github access token'
FILEPATH='/Users/{your username}/'
```

### Usage
```
$ source .commands.sh
$ create ProjectName
```

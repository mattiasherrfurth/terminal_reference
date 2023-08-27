### COMMON COMMANDS
status
fetch
pull
branch
add
commit -m "description"
push

## CLONE A REPO TO CURRENT DIRECTORY - i.e. duplicate that repo to your local folder
git clone https://hostname.domain.com/org/repo.git

### ADD ALL FILES FROM CURRENT DIRECTORY - i.e. add all the files to your local queue for commit
git add --all

### ADD ALL FILES AND FOLDERS FROM SPECIFIC DIRECTORY - i.e. add all the files/folders recursively to your local queue for commit
git add C:\\path\\to\\directory\\*

### RENAME FILE IN PLACE
git mv ./old_file_name ./new_file_name

### COMMIT ALL FILES FROM CURRENT DIRECTORY - i.e. commit your changes to your local branch
git commit --all

### PUSH ALL FILES FROM CURRENT DIRECTORY - i.e. push all changes in your commit to the master branch
git push --all

### FETCH RECORDs OF ALL FILE CHANGES FROM MASTER BRANCH (WHEN AT CLONED REPO LOCATION) - i.e. get the list of changes from the master branch of the origin repo (the repo you cloned)
git fetch origin master

### PULL ALL FILE CHANGES FROM MASTER BRANCH (WHEN AT CLONED REPO LOCATION) - i.e. pull and integrate all changes from the master branch of the origin repo (the repo you cloned)
git pull origin master

### LIST THE FILE CHANGES THAT HAVE BEEN FETCHED - i.e. see what has been changed and could be pulled into your local branch
git log origin/master ^master

### SEE MOST RECENT STASH - i.e. what changes are saved away and not yet staged for commit?
git stash show -p

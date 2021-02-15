# Scripts

## GIT

### GIT change Sensitive File from History
````bash
$ git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch bitbucket_ris.pub' --prune-empty --tag-name-filter cat -- --all
$ git push origin --force --all
````

### Remove all Branches Locally
````bash
$ git branch --merged | grep -v \* | xargs git branch -D
````

### Remove all Tags Remote and Locally
````bash
$ git tag -l | xargs -n 1 git push --delete origin
$ git tag -d $(git tag -l)
````

## Networking

### Docker Clean Build and Kill
````
$ docker-compose down && docker-compose build --no-cache && docker-compose up --force-recreate --remove-orphans
$ docker kill $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q) 
````

### List Ports

```
$ lsof -nP +c 15 | grep LISTEN
```


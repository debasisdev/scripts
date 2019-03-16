# Scripts

### GIT change Sensitive File from History
````bash
$ git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch bitbucket_ris.pub' --prune-empty --tag-name-filter cat -- --all
$ git push origin --force --all
````

### Docker
````
$ docker-compose down && docker-compose build --no-cache && docker-compose up --force-recreate --remove-orphans
$ docker kill $(docker ps -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q) 
````

### Networking

```
# development
$ lsof -nP +c 15 | grep LISTEN
```
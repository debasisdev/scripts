git remote rename origin bitbucket
git remote add origin https://github.com/debasisdev/${PWD##*/}.git
git push origin master
git remote rm bitbucket

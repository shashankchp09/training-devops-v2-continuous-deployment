echo 
ls
pwd
echo git clone a repo
git clone http://gogs:3000/root/devops-codesource.git
ls /app
cd devops-codesource
git config --global user.email "root@devops.local"
git config --global user.name "root"
git config --global user.password "password"
echo 'This is the config de {{KEY1}}' > test.config
git add --all && git commit -m "init commit" && git push origin master

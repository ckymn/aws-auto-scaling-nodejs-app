#!/bin/bash -ex
# output user data logs into a separate file for debugging
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
# download nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
#export NVM dir
export NVM_DIR="/.nvm"	
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 
# install node
nvm install node && nvm install -lts
#create project dir
mkdir nodejs-app
# get source code from githubt
git clone https://github.com/ckymn/aws-auto-scaling-nodejs-app.git
#get in project dir
cd auto-scaling-nodejs-app
#install node module
npm install
#install pm2
npm install pm2 -g
#start app
pm2 start app.js
#save app
pm2 save
#startup app
pm2 startup
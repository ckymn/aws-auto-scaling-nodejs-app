#!/bin/bash
echo 'run after_install.sh: ' >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log

echo 'cd /home/ec2-user/nodejs-server-cicd' >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log
cd /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log

echo 'npm install' >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log 
npm install >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log
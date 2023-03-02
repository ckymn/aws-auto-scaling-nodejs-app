#!/bin/bash
echo 'run after_install.sh: ' >> /home/ec2-user/c-aws-base-project/deploy.log

echo 'cd /home/ec2-user/nodejs-server-cicd' >> /home/ec2-user/c-aws-base-project/deploy.log
cd /home/ec2-user/c-aws-base-project >> /home/ec2-user/c-aws-base-project/deploy.log

echo 'npm install' >> /home/ec2-user/c-aws-base-project/deploy.log 
npm install >> /home/ec2-user/c-aws-base-project/deploy.log
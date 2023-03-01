#!/bin/bash

echo 'run application_start.sh: ' >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log

echo 'pm2 restart nodejs-express-app' >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log
pm2 restart nodejs-express-app >> /home/ubuntu/campusahali/aws-auto-scaling-nodejs-app/deploy.log
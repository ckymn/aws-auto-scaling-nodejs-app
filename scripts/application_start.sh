#!/bin/bash

#start application
sudo pm2 start /home/ec2-user/c-aws-base-project/app.js

#save pm2 list
sudo pm2 save

#restart pm2
sudo pm2 restart all
#!/bin/sh      
ssh jenkins@178.128.73.43 <<EOF        
 cd /var/lib/jenkins/workspace/codeforgeek-electronapp  
 git pull       
 npm install --production       
 pm2 restart all
 exit
EOF
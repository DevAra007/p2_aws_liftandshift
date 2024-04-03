#!/bin/bash
git clone -b LiftAndShift https://github.com/DevAra007/p2_aws_liftandshift.git
cd p2_aws_liftandshift
mvn install 
sudo apt install awscli -y
sudo aws s3 cp target/vprofile-v2.war s3://dev-s3-buk/
sudo systemctl stop tomcat9 
sudo rm -rf /var/lib/tomcat9/webapps/ROOT
sudo cp -r target/vprofile-v2.war /var/lib/tomcat9/webapps/ROOT.war
sudo systemctl start tomcat9
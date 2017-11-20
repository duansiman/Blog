#!/bin/bash
/usr/local/tomcat-8080/bin/shutdown.sh
cd ..
git stash
git pull
git stash pop
cd blog_server
mvn clean
mvn package -Dmaven.test.skip=true -q
cp blog-webs/web-client/target/blog.war /usr/local/tomcat-8080/webapps/
/usr/local/tomcat-8080/bin/startup.sh

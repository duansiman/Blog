#!/bin/bash
cd blog_server
git stash
git pull
git stash pop

docker run --rm -v /root/blog/blog_server/blog_server:/usr/local/src/blog_server -v /root/blog/m2:/root/.m2 -w /usr/local/src/blog_server maven:3.5.2-ibmjava-8 mvn clean install

cd ../blog_front
git stash
git pull
git stash pop

#docker run -it --rm -w /root/blog -v /root/blog/blog_front/blog-front:/root/blog alexsuch/angular-cli npm install
docker run -it --rm -w /root/blog -v /root/blog/blog_front/blog-front:/root/blog alexsuch/angular-cli ng build --prod --aot false

cd ..

rm -rf data/tomcat/blog data/tomcat/blog.war
cp blog_server/blog_server/blog-webs/web-client/target/blog.war data/tomcat

docker-compose -f docker-blog.yml up -d

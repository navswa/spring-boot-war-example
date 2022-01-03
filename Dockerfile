FROM tomcat
COPY /home/runner/work/spring-boot-war-example/spring-boot-war-example/target/hello-world-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]

FROM maven:3.6.3-openjdk-14-slim AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY src /workspace/src
RUN mvn -B package --file pom.xml -DskipTests

FROM tomcat
COPY --from=build /workspace/target/hello-world-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]

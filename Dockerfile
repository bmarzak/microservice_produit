FROM openjdk:8
EXPOSE 9001
ADD target/docker-test-project-integration.jar docker-test-project-integration.jar
ENTRYPOINT ["java","-jar","/docker-test-project-integration.jar"]
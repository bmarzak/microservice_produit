FROM java:8
EXPOSE 9001
ARG JAR_FILE=target/docker-test-project-integration.jar
COPY ${JAR_FILE} docker-test-project-integration.jar
ENTRYPOINT ["java","-jar","/docker-test-project-integration.jar"]

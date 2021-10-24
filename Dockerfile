FROM openjdk:8
EXPOSE 9001
ADD target/docker-test-project-integration.jar docker-test-project-integration.jar
ENTRYPOINT ["java","-jar","/docker-test-project-integration.jar"]

RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

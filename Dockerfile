FROM openjdk:8
EXPOSE 9001
ADD target/docker-test-project-integration.jar docker-test-project-integration.jar
ENTRYPOINT ["java","-jar","/docker-test-project-integration.jar"]
ARG DOCKER_GID=993

RUN groupadd -g ${DOCKER_GID} docker \
  && curl -sSL https://get.docker.com/ | sh \
  && apt-get -q autoremove \
  && apt-get -q clean -y \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin 

RUN useradd -m -d /home/jenkins -s /bin/sh jenkins \
  && usermod -aG docker jenkins

FROM gradle:alpine
LABEL maintainer="wypychemil@gmail.com"

ARG http_port=5050
ARG gradle_home=/home/gradle

EXPOSE ${http_port}

USER root

RUN apk add --no-cache git bash 

USER gradle

VOLUME ${gradle_home}/.gradle

WORKDIR ${gradle_home}

RUN git clone https://github.com/sheehan/job-dsl-playground.git 

WORKDIR ${gradle_home}/job-dsl-playground

ENTRYPOINT ["./gradlew", "run"]

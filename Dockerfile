# Docker base image for OpenJDK8.
FROM gliderlabs/alpine:3.4
MAINTAINER Soumen Trivedi <soumen.trivedi@gmail.com>

ENV JAVA_PKG=openjdk8

RUN apk --no-cache add ${JAVA_PKG}  && rm -rf /tmp/*

# Start container
CMD ["java","-version"]

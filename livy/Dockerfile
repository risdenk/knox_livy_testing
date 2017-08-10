FROM maven:3-jdk-8-alpine

RUN apk --no-cache add git

RUN git clone https://github.com/cloudera/livy/ && cd livy && git checkout v0.2.0 && mvn clean package && rm -rf /root/.m2


FROM maven:3-jdk-8-alpine

RUN apk --no-cache add git

RUN git clone https://github.com/cloudera/livy/ && cd livy && git checkout v0.2.0 && mvn clean package -DskipTests

RUN apk --no-cache add ca-certificates openssl wget && update-ca-certificates

RUN wget -qO- https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz | tar -zxv -C / && rm -f /spark-2.2.0-bin-hadoop2.

ENV SPARK_HOME=/spark

ENTRYPOINT /livy/bin/livy-server


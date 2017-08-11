FROM maven:3-jdk-8-alpine

RUN apk --no-cache add git

RUN git clone https://github.com/cloudera/livy/ && cd livy && git checkout v0.2.0 && mvn clean package -DskipTests

RUN apk --no-cache add ca-certificates openssl wget && update-ca-certificates

RUN wget -qO- https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz | tar -zxv -C / && rm -f /spark-2.2.0-bin-hadoop2.tgz && ln -nsf /spark-2.2.0-bin-hadoop2.7 /spark

RUN apk --no-cache add krb5
RUN apk --no-cache add procps

ENV SPARK_HOME=/spark

COPY livy.conf /livy/conf/livy.conf

ENTRYPOINT cp -f /etc/docker-kdc/krb5.conf /etc/krb5.conf && kinit -kt /etc/docker-kdc/livy.keytab livy/livy.example.com@EXAMPLE.COM && /livy/bin/livy-server start


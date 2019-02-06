FROM maven:alpine as builder
WORKDIR /work/
COPY  . .
COPY  settings.xml /root/.m2/settings.xml
RUN  mvn clean install  -DskipTests
RUN  ls target/dist/app/



FROM openjdk:8-jre-alpine
RUN apk --update --no-cache add tzdata  ca-certificates
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
WORKDIR /app/
COPY --from=builder /work/target/dist/app/ .
ENV JAVA_OPTS=" -Dcom.sun.management.jmxremote.rmi.port=9090 \
-Dcom.sun.management.jmxremote=true \
-Dcom.sun.management.jmxremote.port=9090 \
-Dcom.sun.management.jmxremote.ssl=false \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.local.only=false \
-Djava.security.egd=file:/dev/./urandom \
-jar /app/quick-1.0-SNAPSHOT.jar"

EXPOSE 6099
CMD ["java","-jar","/app/quick-1.0-SNAPSHOT.jar"]

FROM openjdk:8-jdk-alpine
RUN echo "Asia/Shanghai" > /etc/timezone
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar
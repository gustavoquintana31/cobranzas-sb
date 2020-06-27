FROM adoptopenjdk/openjdk11:alpine-slim
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/cobranzas-sb-0.0.1-SNAPSHOT.jar cobranzas-sb.jar
EXPOSE 8080
#ENTRYPOINT exec java $JAVA_OPTS -jar cobranzas-sb.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar cobranzas-sb.jar

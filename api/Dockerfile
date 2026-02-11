FROM registry.access.redhat.com/ubi8/openjdk-17:1.16

ENV LANGUAGE='en_US:en'

WORKDIR /deployments

COPY target/quarkus-app/lib/ ./lib/
COPY target/quarkus-app/*.jar ./
COPY target/quarkus-app/app/ ./app/
COPY target/quarkus-app/quarkus/ ./quarkus/

EXPOSE 8080
USER 185
ENV JAVA_OPTS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
ENV JAVA_APP_JAR="quarkus-run.jar"

ENTRYPOINT [ "/opt/jboss/container/java/run/run-java.sh" ]

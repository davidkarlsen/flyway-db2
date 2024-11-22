FROM maven:latest as maven
COPY pom.xml /tmp/
RUN cd /tmp && mvn dependency:copy-dependencies

FROM flyway/flyway:11.0.0
ADD https://repo1.maven.org/maven2/com/ibm/db2/jcc/11.5.9.0/jcc-11.5.9.0.jar /flyway/drivers/
COPY --from=maven /tmp/target/dependency/ /flyway/drivers
RUN chmod -R a+rx /flyway/drivers/
RUN chown -R root:root /flyway/drivers/

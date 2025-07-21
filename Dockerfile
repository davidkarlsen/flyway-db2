FROM maven:latest AS maven
COPY pom.xml /tmp/
RUN cd /tmp && mvn dependency:copy-dependencies

FROM flyway/flyway:11.10.3
RUN rm -rf /flyway/lib/aad
ADD https://repo1.maven.org/maven2/com/ibm/db2/jcc/12.1.2.0/jcc-12.1.2.0.jar /flyway/drivers/
COPY --from=maven /tmp/target/dependency/ /flyway/drivers
RUN chmod -R a+rx /flyway/drivers/
RUN chown -R root:root /flyway/drivers/

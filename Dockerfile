FROM flyway/flyway:9.22.3
ADD https://repo1.maven.org/maven2/com/ibm/db2/jcc/11.5.9.0/jcc-11.5.9.0.jar /flyway/drivers/
RUN chmod a+rx /flyway/drivers/*

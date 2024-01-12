FROM flyway/flyway:10.5.0
ADD https://repo1.maven.org/maven2/com/ibm/db2/jcc/11.5.9.0/jcc-11.5.9.0.jar /flyway/drivers/
RUN chmod a+rx /flyway/drivers/*

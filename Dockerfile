FROM flyway/flyway:10.8.1
ADD https://repo1.maven.org/maven2/com/ibm/db2/jcc/11.5.9.0/jcc-11.5.9.0.jar /flyway/drivers/
ADD https://repo1.maven.org/maven2/com/azure/azure-identity/1.7.0/azure-identity-1.7.0.jar /flyway/drivers/
RUN chmod a+rx /flyway/drivers/*

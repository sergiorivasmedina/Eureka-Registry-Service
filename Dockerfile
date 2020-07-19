FROM maven:ibmjava-alpine
MAINTAINER Sergio Rivas Medina -> srivasme@everis.com

COPY ./ ./app
EXPOSE 8099
WORKDIR ./app/
RUN mvn clean package && cd target/
ENTRYPOINT ["java", "-jar", "registry-service-0.0.1-SNAPSHOT.jar"]
FROM openjdk:8

#ARG JAR_FILE=JAR_FILE_MUST_BE_SPECIFIED_AS_BUILD_ARG
#ARG JAR_FILE=/var/lib/jenkins/workspace/simple-test/target/spring-petclinic-2.4.2.jar

#COPY ${JAR_FILE} docker-spring-petclinic-boot.jar
#ADD /var/lib/jenkins/workspace/simple-test/target/spring-petclinic-2.4.2.jar docker-spring-petclinic-boot.jar

WORKDIR /app
#ADD /workspace/target/spring-petclinic-2.4.2.jar docker-spring-petclinic-boot.jar
ADD . /app
RUN ls /app
RUN cd target && ls


COPY /app/target/spring-petclinic-2.4.2.jar docker-spring-petclinic-boot.jar

#EXPOSE 8080
EXPOSE 8082

ENTRYPOINT [ "java" , "-jar",  "docker-spring-petclinic-boot.jar" ]


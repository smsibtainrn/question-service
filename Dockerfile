FROM openjdk:28-ea-trixie
ADD build/libs/question-service.jar question-service.jar
ENTRYPOINT ["java","-jar","/question-service.jar"]

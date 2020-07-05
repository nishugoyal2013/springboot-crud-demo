FROM maven:3-jdk-11 as builder
LABEL owner="NG"
RUN mkdir /code
WORKDIR /code
COPY . .
RUN mvn spring-boot:run


FROM openjdk:11-jdk
RUN mkdir /code
WORKDIR /code
COPY --from=builder /code/target/HelloWorld-Java-Springboot-0.0.1.jar .
EXPOSE 8080
CMD [ "java","-jar","HelloWorld-Java-Springboot-0.0.1.jar"]


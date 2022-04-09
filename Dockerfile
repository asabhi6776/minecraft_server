FROM openjdk:17.0.1-jdk-oraclelinux8

RUN mkdir /minecraft

WORKDIR /minecraft

COPY eula.txt .

COPY paper-1.18.2-283.jar .

CMD ["java", "-jar", "paper-1.18.2-283.jar"]
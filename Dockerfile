FROM openjdk:17.0.1-jdk-oraclelinux8

LABEL maintainer="asabhi6776"

RUN mkdir /minecraft

WORKDIR /minecraft

COPY ./eula.txt /minecraft

COPY ./paper-1.18.2-283.jar /minecraft

RUN chmod -R 755 /minecraft

RUN chown -R 1000:1000 /minecraft

USER 1000

CMD ["java", "-jar", "paper-1.18.2-283.jar"]

EXPOSE 25565

VOLUME /minecraft
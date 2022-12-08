FROM ubuntu:20.04 AS build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -y openjdk-11-jdk\
    maven\
    git

## Cloning the repository
RUN git clone https://github.com/damienMS/doodlestudent.git


## Going to the working directory
WORKDIR /doodlestudent/api

RUN git checkout dev



## EXPOSE on port 8080
EXPOSE 8080

## Compiling the project
RUN mvn clean package -Dquarkus.package.type=uber-jar


## Si vous avez une version récente, il se peut qu'il faille utiliser, si aucune des deux versions ne marchent,
## recompiler opencv ou faites la tourner dans un container avec une image de docker *ubuntu:16.04*
##CMD [ "java", "-jar", "target/tlcdemoApp-1.0.0-SNAPSHOT-runner.jar" ]
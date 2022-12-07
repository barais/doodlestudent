FROM ubuntu:20.04 AS build

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -y openjdk-8-jdk\
    maven\
    libpng16-16\
    libdc1394-22 \
    git

## Cloning the repository
RUN git clone https://github.com/barais/TPDockerSampleApp

## Going to the working directory
WORKDIR /TPDockerSampleApp

## Building the project
RUN mvn install:install-file -Dfile=./lib/opencv-3410.jar \
    -DgroupId=org.opencv  -DartifactId=opencv -Dversion=3.4.10 -Dpackaging=jar

## EXPOSE on port 8080
EXPOSE 8080

# Compiling the project
RUN mvn clean package

## Si vous avez une version récente, il se peut qu'il faille utiliser, si aucune des deux versions ne marchent,
## recompiler opencv ou faites la tourner dans un container avec une image de docker *ubuntu:16.04*
CMD [ "java", "-Djava.library.path=lib/ubuntuupperthan18/", "-jar", "target/fatjar-0.0.1-SNAPSHOT.jar" ]
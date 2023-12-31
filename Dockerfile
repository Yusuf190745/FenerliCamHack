# Dockerfile

# Script       : FENERLİFENERLİBEYCamHack
# Author       : FENERLİBEY
# Github       : https://github.com/Yusuf190745
# Messenger    : https://m.me/FENERLİBEY
# Email        : FENERLİBEYkrd@gmail.com
# Date         : 05-09-2021
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/FENERLİBEY/FENERLİBEYCamHack"

# Working directory
WORKDIR /FENERLİBEYCamHack/
# Add files 
ADD . /FENERLİBEYCamHack

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t FENERLİBEY/FENERLİBEYCamHack:latest", "sudo docker run --rm -it FENERLİBEY/pyphisher:latest"

## "sudo docker pull FENERLİBEY/FENERLİBEYCamHack", "sudo docker run --rm -it FENERLİBEY/FENERLİBEYCamHack"

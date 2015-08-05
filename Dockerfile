FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
         python3 python3-pip
RUN pip3 install -U pip==7.1.0

RUN adduser --disabled-password --home /work work
USER work
WORKDIR /work

CMD ["pip", "wheel", "-r", "requirements.txt"]

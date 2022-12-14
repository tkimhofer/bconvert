# syntax=docker/dockerfile:1

FROM debian:bookworm
LABEL author="torben.kimhofer@murdoch.edu.au"

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install -r requirements.txt


COPY . .
RUN chmod 777 /app/bconvert1.py

ENTRYPOINT ["python3", "bconvert1.py"]


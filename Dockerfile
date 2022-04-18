FROM python:latest

RUN apt-get update
RUN apt-get install -y python3
RUN mkdir /src
WORKDIR /src
COPY . /src
RUN cd /src
RUN pip install -r requirements.txt

ENV TELEGRAM_TOKEN ${TELEGRAM_TOKEN}

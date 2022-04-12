FROM python:3.7

RUN pip install python-telegram-bot

ENV TELEGRAM_TOKEN ${TELEGRAM_TOKEN}

RUN apt-get update
RUN apt-get install -y python3

RUN mkdir /app
ADD . /app
WORKDIR /app

CMD python /app/echobot.py

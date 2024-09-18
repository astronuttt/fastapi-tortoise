FROM python:3.12-alpine

RUN apk --no-cache add bash gcc python3-dev libc-dev 

ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /
WORKDIR /

RUN pip install --no-cache-dir -r /requirements.txt
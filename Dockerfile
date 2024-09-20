FROM python:3.12-alpine

WORKDIR /
COPY ./requirements.txt /

RUN apk --no-cache add bash gcc python3-dev libc-dev \
    && pip install --no-cache-dir -r /requirements.txt



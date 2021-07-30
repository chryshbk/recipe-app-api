FROM python:3.9-alpine
MAINTAINER Chrystian Santos

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D chef-user
USER chef-user


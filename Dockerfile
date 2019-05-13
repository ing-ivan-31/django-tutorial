# base image
FROM python:3.7-alpine
MAINTAINER Ivan Sanchez

# postgres extension needed it psycopg2 extension
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql-dev
# z-lib needed for Pillow extension
RUN apk add --update --no-cache build-base python-dev py-pip jpeg-dev zlib-dev

#show logs in docker
ENV PYTHONUNBUFFERED 1

# add and install requirements
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt
RUN apk del .tmp-build-deps

# set working directory
RUN mkdir -p /app
WORKDIR /app

# Copy app to docker container
COPY ./app /app


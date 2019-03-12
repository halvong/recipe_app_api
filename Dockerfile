FROM python:3.6.5
LABEL maintainer="halvong@yahoo.com"

#avoids buffered
ENV PYTHONBUFFERED 1

COPY . /usr/src/app
WORKDIR /usr/src/app

#ADD requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#creates user for running appl.
#RUN adduser -D user
#USER user
#CMD python manage.py runserver 0.0.0.0:8000
FROM python:3-alpine

ENV user user
ENV passwoord pass
ENV email admin@admin.com

WORKDIR /code

RUN mkdir db
COPY ./requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

COPY . /code


EXPOSE 8000
VOLUME["/code/db"]

 CMD sh init.sh && python manage.py runserver 0.0.0.0:8000

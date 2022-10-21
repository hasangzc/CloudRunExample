# hub.docker dan bu image i çekecek(Python image nı) ve container a yükleyecek
FROM python:3.10-slim

# Container içinde bir dizin olması gerekiyor
ENV APP_HOME /app

WORKDIR ${APP_HOME} 

# Tüm kodları app içine al
COPY . ./

RUN pip install -r requirements.txt

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app



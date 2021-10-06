FROM python:3.9.7-slim-buster

WORKDIR /root
RUN pip install --upgrade pip
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN echo "Asia/Tokyo" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get install -y cron

COPY ./crontab ./.crontab
RUN crontab .crontab
CMD cron -f
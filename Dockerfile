FROM python:3.10.4-bullseye

WORKDIR /python
ENV PYTHONUNBUFFERED=1
COPY ./requirements.txt /python/requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

RUN apt-get update && apt-get install -y vim

CMD /bin/bash

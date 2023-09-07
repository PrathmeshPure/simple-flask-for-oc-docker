FROM ubuntu:16.04

RUN apt-get udpate && apt-get install -y python python-pip

RUN pip instal flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

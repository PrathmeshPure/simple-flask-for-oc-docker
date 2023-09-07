FROM ubuntu:16.04

COPY app.py /opt/

COPY requirements.txt ./

RUN pip intall -r requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

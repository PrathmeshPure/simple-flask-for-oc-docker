FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

COPY app.py /opt/

COPY requirements.txt ./

ENV PATH=/home/ubuntu/.virtualenvs/bin:$PATH

RUN pip install -r requirements.txt

#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0

CMD python app.py

From python:3.8

MAINTAINER Shramik

RUN pip install flask
RUN pip install flask_restful

ADD python.py /python.py

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY src/ .
EXPOSE 80

CMD [ "python", "./server.py" ] 

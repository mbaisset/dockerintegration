FROM ubuntu:latest

RUN echo I am run during image building
RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip install pytest
RUN pip install flask

WORKDIR /home/marco

COPY app.py app.py 

ENTRYPOINT python3 app.py

#ENTRYPOINT ["ls", "-l"]
#CMD ["-a"]

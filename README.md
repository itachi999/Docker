<h><b> Docker </b></h>


To run this project we need to first pull the docker container which can be done using this command (linux/ubuntu)

 #<b>docker pull gantihk/weather</b>

Now that the container is pulled we need to start or run the docker container to start the weather forecast service using the command(assuming that we have done all the "build" required).

#<b>docker run -p 80:5000 gantihk/weather</b>

After running this command we can view the weather forecast in the local ip address of the machine(eg : '127.0.0.1' or '18.XXX.XXX.XXX')

<b>It is important to know that we have to run the docker run command as mentioned above i.e. 80:5000 </b>

<h2>Commands in the Dockerfile</h2>

FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
RUN pip install --upgrade pip

WORKDIR /app

ADD . /app

RUN pip install -r requirements.txt

EXPOSE 80

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["server.py"]

<h2>Requirements.txt</h2>

Flask

SQLAlchemy

pandas

flask_restful

flask_jsonpify

datetime

# Use an official Python runtime as a parent image
FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
RUN pip install --upgrade pip

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80
EXPOSE 5000
ENTRYPOINT ["python"]

# Run app.py when the container launches
CMD ["server.py"]


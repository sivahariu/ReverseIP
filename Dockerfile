FROM python:3-alpine3.19

# Set the working directory in the container
WORKDIR /app
COPY requirements.txt .
# Copy the current directory contents into the container at /usr/src/app
COPY src src

# Install any needed dependencies specified in requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT [ "python","./src/app.py" ]
# Make port 9090 available to the world outside this container
EXPOSE 9090


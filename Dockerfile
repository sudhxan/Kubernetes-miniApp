# Python runtime as a parent image
FROM python:3.8-slim

# Working directory as the container
WORKDIR /app

# Current directory contents copied to the container at /app
COPY . /app

# Installing needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Making port 5000 available to the world outside
EXPOSE 5000

# Defining an environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

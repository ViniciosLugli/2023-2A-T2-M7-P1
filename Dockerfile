# Using python 3.11-slim as base image
FROM python:3.11-slim

# Set the working directory to /frontend
WORKDIR /frontend

# Copy the current directory contents into the container at /frontend
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy the current directory contents into the container at /frontend
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]
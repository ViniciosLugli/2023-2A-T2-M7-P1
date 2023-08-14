# 2023 - Módulo 7 - Ponderada 1

# Introduction

This is a simple project to serve with docker and fastapi on python, a website of dev portfolio, providing instructions on how to set up a virtual environment for development and how to run the project using Docker.

## Prerequisites

-   Python 3.11
-   Docker (if you intend to run the project inside a container)

## Development Mode: Using Virtual Environment (venv)

### 1. Setting up the Virtual Environment

Navigate to the project root directory and run the following commands:

```bash
python -m venv venv
source venv/bin/activate  # On Windows, use: venv\Scripts\activate
pip install -r requirements.txt
```

This will create a virtual environment and install the required packages.

### 2. Running the Application

With the virtual environment activated, you can run the application using:

```bash
uvicorn src.main:app --reload
```

The application will be accessible at `http://127.0.0.1:8000/`.

## Production Mode: Using Docker

### 1. Building the Docker Image

From the project root directory, build the Docker image using:

```bash
docker build -t frontend-app .
```

### 2. Running the Docker Container

After building the image, you can run the application inside a Docker container using:

```bash
docker run -p 80:80 frontend-app
```

The application will be accessible at `http://127.0.0.1:80/`.

## Docker image

You can find the docker image on [Docker Hub](https://hub.docker.com/r/vinicioslugli/2023-2a-t2-m7-p1).

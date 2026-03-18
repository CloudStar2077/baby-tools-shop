# Docker Container Setup

Setup a docker container to run a Django Web App, this will be implementet by generating a predefined docker image.

# Table of Contents

1. [Quickstart](#Quickstart) 
2. [Creating the Repository](#Creating-the-Repository)
3. [Usage](#Usage)

## 1. Quickstart

PREREQUISITES

- Basic knowledge of the terminal/CLI
- Docker (version 20.10 or higher) installed
- Git installed

QUICK START GUIDE

- Clone Repository
```bash
git clone https://github.com/username/repo.git
cd /repo
```
- Build docker image
```bash
docker build -t my-webapp:latest .
```  
- Run the Container
```bash
docker run -d \
  -p 8025:80 \
  -v /host/data:/app/data \
  --name my-webapp \
  --restart unless-stopped \
  my-webapp:latest
```


## 2. Creating the Repository

To ensure that all data and dependencies can be transfered into the container, copy all the necessary files into a project directory `baby-tools-shop`. 

`babyshop_app` is the directory which includes the Django Web App. To ensure the app runs correctly, the dependencies are listed in the `requirements.txt`.
The `.gitignore` ignores irrelevant content from the repository, as well as the `.dockerignore` which ignores unnecesarry files to load into the Container.
The `Dockerfile` describes the predefined docker image like a building plan for the container to start it within seconds without
doing any configurations.

## 3. Usage

To Start building the Repository, first clone the Python App from ```git@github.com:Developer-Akademie-DevSecOpsKurs/baby-tools-shop.git```, this is the basis of the project.
You can run the app localy by 
```bash
cd babyshop_app
python manage.py runserver
```
Now you can see that some dependencies (packages) need to be installed and the sql database also must be migrated.

To ensure that all data and dependencies can be transfered into the container, copy the `babyshop_app` into the project directory `baby-tools-shop`. To make the environment reproducible, the dependencies are listed in the `requirements.txt`.
With 
```bash
pip freeze -> requirements.txt
```
you can print the output directly into the requirements.txt. 








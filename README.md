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
git clone git@github.com:CloudStar2077/baby-tools-shop.git
cd /baby-tools-shop
```
- Build docker image
```bash
docker build -t bts-app:latest .
```  
- Run the Container
```bash
docker run -d \
  -p 8025:80 \
  -v /host/data:/app/data \
  --name bts-app \
  --restart unless-stopped \
  bts-app:latest
```


## 2. Creating the Repository

To ensure that all data and dependencies can be transfered into the container, copy all the necessary files into a project directory `baby-tools-shop`. 

`babyshop_app` is the directory which includes the Django Web App. To ensure the app runs correctly, the dependencies are listed in the `requirements.txt`.
The `.gitignore` ignores irrelevant content from the repository, as well as the `.dockerignore` which ignores unnecesarry files to load into the Container.
The `Dockerfile` describes the predefined docker image like a building plan for the container to start it within seconds without
doing any configurations.

## 3. Usage

To Start building the Repository, clone the Python App from Github, this is the core of the project.

```git clone git@github.com:Developer-Akademie-DevSecOpsKurs/baby-tools-shop.git```
Start the app by 
```bash
cd babyshop_app
python manage.py runserver
```
You can see that some dependencies (packages) need to be installed and the sql database needs to be migrated. Install the packages and then 
```bash
python manage.py migrate  #migration of the database

pip freeze -> requirements.txt #prints the output of all dependencies directly into the requirements.txt
```
To make the environment reproducible, the dependencies are listed in the `requirements.txt`.
The `Dockerfile` describes the predefined docker image like a building plan for the container to start it within seconds without
doing any configurations.









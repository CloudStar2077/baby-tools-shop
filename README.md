# Docker Container Setup

Setup a docker container to run a Django Web App,this will be implementet by generating a predefined docker image.

# Table of Contents

1. Creating the Repository
2. Creating and Deploying the SSH Key Pair
3. Disable Password Authentication


## 1. Creating the Repository

To ensure that all data and dependencies can be transferred into a container, copy all the necessary files into the App directory baby-tools-shop.
This includes the .gitignore file, which ignores irrelevant content from the repository, as well as the .dockerignore which ignores unnecesarry files
to load into the Container.













dockerfile                   ALLOWED_HOSTS = ['167.235.27.211', 'localhost']

migrate:

requirements.txt

gitignore

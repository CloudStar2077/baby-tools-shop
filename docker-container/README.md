# Docker Container Setup 

Setup a docker container to run a Django Web App,this will be implementet by generating a predefined docker image.

# Table of Contents

1. [Creating the Repository](#Creating-the-repository)
2. [Creating and Deploying the SSH Key Pair](#creating-and-deploying-the-ssh-key-pair)
3. [Disable Password Authentication](#disable-password-authentication)

## 1. Creating the Repository

To ensure that all data and dependencies can be transferred into a container, copy all the necessary files into the App directory baby-tools-shop.
This includes the .gitignore file, which ignores irrelevant content from the repository, as well as the .dockerignore which ignores unnecesarry files
to load into the Container.

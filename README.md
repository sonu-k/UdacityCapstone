# Udacity Capstone Project

Circleci status badge: [![CircleCI](https://circleci.com/gh/sonu-k/UdacityCapstone/tree/main.svg?style=svg)](https://circleci.com/gh/sonu-k/UdacityCapstone/tree/main)

This project demonstrates DevOps skills obtained from Cloud DevOps nanodegree program. These include:

1) Building a CI/CD pipeline using circleci
2) Using Docker containers to containerize an application
3) Use Kubernetes (EKS) as a container orchestrator
4) Deploy infrastracture using Infrastructure as code


## Installation

Clone the project Git Repository:

`git clone https://github.com/sonu-k/UdacityCapstone.git`

## Install project dependencies

Create a virtual environment:

`python3 -m venv ~/.UdacityCapstone`

Activate the virtual environment:

`source ~/.UdacityCapstone/bin/activate`

Install necessary requirements:

`pip install -r requirements.txt`

## Run the application 

`python app.y`

## Run application in a Docker container

`./run_docker.sh`

## Upload Docker Image to DockerHub

`./upload_docker.sh`

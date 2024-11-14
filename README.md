# Hosting a Website with Docker

This project demonstrates how to **containerize and host a simple website** using **Docker**. We will create a Docker image that runs a web server (such as Nginx or Apache) and serves a static website, which can be easily deployed on any machine with Docker installed.

## Features
- **Dockerized**: The website is packaged and deployed within a Docker container.
- **Web Server**: We use **Nginx** as the web server to serve the website's static files.
- **Portability**: The website can be easily deployed to any platform that supports Docker, including **AWS EC2**, **Azure**, or **local machines**.

## Prerequisites

Before starting, ensure that you have the following installed on your machine:
- [Docker](https://www.docker.com/get-started)
- [Git](https://git-scm.com/)
- (Optional) [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

### Clone the Repository

Start by cloning the repository to your local machine:

```bash
git clone https://github.com/yourusername/your-repository.git
cd your-repository
```
## Build the Docker Image

Once you have the project files on your local machine, you can build the Docker image. This will use the `Dockerfile` to create an image that contains the necessary dependencies (like Nginx) and your website content.

Run the following command in your terminal:

```bash
docker build -t website-image .
```
## Run the Docker Container

Once the image is built, you can run the container to serve the website. The following command will run the container in **detached mode** and map **port 8080** on your host machine to **port 80** inside the container (the default HTTP port):

```bash
docker run -d -p 8080:80 website-image
```
## Access the Website

Once the container is running, you can access your website locally by navigating to:

```bash
http://localhost:8080
```

If you're deploying this on a remote server (such as an AWS EC2 instance), replace `localhost` with the **public IP** of your EC2 instance:

```bash
http://<your-server-ip>:8080
```

This will allow you to view the website served by your Docker container.


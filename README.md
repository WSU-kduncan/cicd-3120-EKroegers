# Project Overview

- what is the point of this project and what tools are used
- Part 4 - Diagramming goes here
  - Include a diagram (or diagrams) of your entire workflow. Meaning it should start with a project change / update, the steps that happen in between, and end with the updated version when the server is queried (web page is accessed)

# Run Project Locally

- how you installed docker + dependencies (WSL2, for example)
```bash
$ sudo apt-get update
$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
$ sudo mkdir -p /etc/apt/keyrings
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
$ sudo service docker start
```

- how to build the container
	- After creating a Dockerfile, you can run `docker build -t servername` (`webserver` in my case)
- how to run the container
	- `docker run -d -p serverport:80 servername` (`3000` and `webserver` in my case)
- how to view the project running in the container (open a browser...go to ip and port...)
	- go to http://localhost:serverport/ (`3000` in my case)

# DockerHub

- Process to create public repo in DockerHub
	- After making an account, you're taken through a guided creation process where you name a repo, provide a description and readme, and place it on DockerHub, ignoring all of the buttons that are asking you if you want to make it private.
- How to authenticate with DockerHub via CLI using Dockerhub credentials
	- Go to `Account Settings` then `Security` then generate an access token
	- then on the command line you can use `docker login -u Username`
	- then paste the key in place of the password
  - what credentials would you recommend providing?
	- Access Token
- How to push container to Dockerhub
	- `docker push <hub-user>/<repo-name>:<tag>`

# GitHub Actions

- Configuring GitHub Secrets
  - What secrets were set based on what info
- Behavior of GitHub workflow
  - what does it do and when
  - what variables in workflow are custom to your project

# Deployment

- Description of container restart script
- Setting up a webhook on the server
  - How you created you own listener
  - How you installed the [webhook on GitHub](https://github.com/adnanh/webhook)
  - How to keep the webhook running if the instance is on
- Description of Webhook task definition file
- Steps to set up a notifier in GitHub or DockerHub

docker stop site
docker ps -a
docker rm webserver
docker ps -a
docker pull ekroeger1/ceg3120:latest
docker images
docker run -d --restart unless-stopped -p 3000:80 --name webserver ekroeger/ceg3120

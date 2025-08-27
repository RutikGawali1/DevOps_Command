# ======================================
# 🐳 Docker Commands Cheat Sheet (Basics → Advanced)
# Author: Rutik Gawali
# ======================================

echo "===== 1. Docker Basics ====="
docker --version
docker info
docker help

echo -e "\n===== 2. Images ====="
docker images
docker pull ubuntu
# docker rmi ubuntu
docker image prune -f

echo -e "\n===== 3. Containers ====="
docker ps
docker ps -a
docker run hello-world
docker run -it ubuntu bash
docker stop $(docker ps -q)
docker start $(docker ps -aq | head -n 1)
docker restart $(docker ps -aq | head -n 1)
# docker rm <container_id>
docker container prune -f
docker logs $(docker ps -aq | head -n 1)
docker exec -it $(docker ps -aq | head -n 1) bash

echo -e "\n===== 4. Build & Tag Images ====="
# Build image from Dockerfile (need Dockerfile in folder)
echo "docker build -t myapp:v1 ."
# Tag image
echo "docker tag <image_id> myapp:latest"
# Commit running container
echo "docker commit <container_id> mycustom:latest"

echo -e "\n===== 5. Networking ====="
docker network ls
docker network create mynet
docker network inspect bridge
docker run -d --network=mynet nginx

echo -e "\n===== 6. Volumes ====="
docker volume ls
docker volume create myvol
docker run -d -v myvol:/data ubuntu sleep 1000
docker volume inspect myvol
# docker volume rm myvol
docker volume prune -f

echo -e "\n===== 7. Port Mapping ====="
docker run -d -p 8080:80 nginx
docker port $(docker ps -q | head -n 1)

echo -e "\n===== 8. Docker Compose ====="
echo "docker-compose up"
echo "docker-compose up -d"
echo "docker-compose down"
echo "docker-compose build"
echo "docker-compose logs"

echo -e "\n===== 9. Registry (Push/Pull) ====="
echo "docker login"
docker tag nginx:latest youruser/nginx:latest
echo "docker push youruser/nginx:latest"
docker pull nginx:latest

echo -e "\n===== 10. System Cleanup ====="
docker system df
docker system prune -f
# docker system prune -a -f

echo -e "\n===== 11. Advanced & Debugging ====="
docker inspect $(docker ps -aq | head -n 1)
docker stats --no-stream
docker top $(docker ps -aq | head -n 1)
docker diff $(docker ps -aq | head -n 1)
docker cp $(docker ps -aq | head -n 1):/etc/hostname ./hostname_copy
docker cp ./hostname_copy $(docker ps -aq | head -n 1):/root/hostname_copy

# Save & Load
docker save -o mynginx.tar nginx:latest
docker load -i mynginx.tar

# Export & Import
docker export $(docker ps -aq | head -n 1) -o cont.tar
docker import cont.tar myimported:latest

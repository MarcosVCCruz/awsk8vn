docker build -t awsk8vn:latest .

docker run -it --memory=2048m -u root --privileged -v /var/run/docker.sock:/var/run/docker.sock awsk8vn:latest /bin/bash
FROM maven:3.6.2

RUN mvn --version
RUN apt update
RUN apt install python3 python3-pip -y
RUN pip3 install awscli
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT /bin/sh
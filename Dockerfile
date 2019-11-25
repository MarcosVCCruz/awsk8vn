FROM docker:stable

RUN apk add curl
RUN apk add openjdk11-jdk
RUN apk add maven
RUN apk add python3
RUN pip3 install awscli
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT /bin/sh
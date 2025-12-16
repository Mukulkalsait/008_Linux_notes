
FROM debian:latest
RUN apt update -y && \ 
    apt upgrade -y  
RUN apt install -y sudo vim iproute2 net-tools curl procps 
RUN sudo useradd -m -s /bin/bash trainee -G sudo 

RUN mkdir -p /lab/projects && \
    sudo chown -R trainee:trainee /lab && \
    sudo chmod 700 /lab

USER root
WORKDIR /lab/projects

CMD ["sleep","3600"]

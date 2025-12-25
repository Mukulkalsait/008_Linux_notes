# FROM registry.access.redhat.com/ubi9/ubi-minimal:latest
FROM registry.access.redhat.com/ubi9/ubi-init

ENV container=podman

STOPSIGNAL SIGRTMIN+3

# Install required base tools
RUN microdnf update -y && microdnf install -y systemd openssh-server  openssh-clients  sudo  vim  curl  iproute  procps-ng  passwd  tar  gzip &&  microdnf clean all


ARG USERNAME=examuser-ubi
ARG PASSWORD=asdf123

RUN useradd -m ${USERNAME} && \
    echo "${USERNAME}:${PASSWORD}" | chpasswd && \
    echo "${USERNAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
    usermod -aG wheel examuser-ubi

# Fix permissions & enable SSH host keys
RUN mkdir -p /run/sshd

COPY config/sshd_config /etc/ssh/sshd_config

COPY scripts/init.sh /init.sh
RUN chmod +x /init.sh


EXPOSE 22
CMD ["/sbin/init"]

# CMD ["/usr/sbin/init"]







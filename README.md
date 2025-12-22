
# Folder Structure:
```
rhcsa-lab/
│
├── docker-compose.yml
│
├── ubuntu-lts/
│   ├── Dockerfile
│   ├── scripts/
│   │   └── init.sh
│   └── config/
│       └── sshd_config
│
├── rocky/
│   ├── Dockerfile
│   ├── scripts/
│   │   └── init.sh
│   └── config/
│       └── sshd_config
│
├── arch/
│   ├── Dockerfile
│   ├── scripts/
│   │   └── init.sh
│   └── config/
│       └── sshd_config
│
├── rhel-ubi/
│   ├── Dockerfile
│   ├── scripts/
│   │   └── init.sh
│   └── config/
│       └── sshd_config
│
└── shared/
    ├── authorized_keys
    ├── default-user.env
    ├── motd
    └── notes.txt
```


### ✔ **Each OS in its own directory**

Clear, modular, easy to maintain.

### ✔ **Same internal structure for each image**

* `Dockerfile`
* `/scripts` for user-setup, package install, entrypoint
* `/config` for SSH, MOTD, etc.

Standardization = faster development + cleaner videos.

### ✔ **Shared folder**

Contains files used across all OS images:

* **authorized_keys** — for passwordless SSH
* **default-user.env** — default username/password
* **motd** — same message for all containers
* **notes.txt** — developer notes (ignored by container)

### ✔ **docker-compose.yml at the root**

Single file to bring up:

```
docker compose up -d
```


## Container Names:

ubuntu-lts
rocky
arch
rhel-ubi


## Docker Image Tags:


rhcsa/ubuntu-lts:latest
rhcsa/rocky:latest
rhcsa/arch:latest
rhcsa/rhel-ubi:latest


## Service Names in Compose:


ubuntu
rocky
arch
ubi


## Network Name:


rhcsa_net


# 🧪 Features we will enable inside each container:

* SSH server
* sudo + user creation (`examuser`)
* basic tools: vim/nano/less/net-tools
* systemctl → via `systemd` enabled containers
* firewalld (Rocky + UBI only)
* bind mounts for “disk exercises”
* shared volume for SSH keys
* minimal MOTD to identify the OS
* persistent home folder per container
* password auth enabled (optional)

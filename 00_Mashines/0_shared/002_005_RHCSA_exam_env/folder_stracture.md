
# Folder Structure:

```
 Z_new_folderStracture/
  ├── 1_arch/
  │   ├── config/
  │   │   ├──motd
  │   │   └──sshd_config
  │   ├── scripts/
  │   └── Dockerfile
  │
  ├── 2_rhel-ubi/
  │   ├── config/
  │   ├── scripts/
  │   └── Dockerfile
  │
  ├── 3_ubuntu/
  │   ├── config/
  │   ├── scripts/
  │   └── Dockerfile
  │
  ├── 4_rocky/
  │   ├── config/
  │   ├── scripts/
  │   └── Dockerfile
  │
  ├── disks/
  │    |->  1_arch (copy)    |->   disk1.img    disk2.img
  │    |->  2_rhel (copy)    |->   disk1.img    disk2.img
  │    |->  3_ubuntu (copy)  |->   disk1.img    disk2.img
  │    |->  4_rocky (copy)   |->   disk1.img    disk2.img
  │
  ├── info/
  │   ├── 1_shared_Folder_importance.md
  │   └── 2_why_degraded.md
  │
  ├── shared/
  │   ├── authorized_keys/
  │   ├── LM_check_ssh_working.sh
  │   └── LM_create_disk.sh
  │
  └── docker-compose.yaml

```

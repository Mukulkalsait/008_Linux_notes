#!/bin/bash

echo "Creating RHCSA Lab sparse disks (100MB each)..."

mkdir -p ../disks/ubuntu ../disks/rocky ../disks/arch ../disks/ubi

truncate -s 100M ../disks/ubuntu/disk1.img
truncate -s 100M ../disks/ubuntu/disk2.img

truncate -s 100M ../disks/rocky/disk1.img
truncate -s 100M ../disks/rocky/disk2.img

truncate -s 100M ../disks/arch/disk1.img
truncate -s 100M ../disks/arch/disk2.img

truncate -s 100M ../disks/ubi/disk1.img
truncate -s 100M ../disks/ubi/disk2.img

echo "Done. Sparse disks created safely."

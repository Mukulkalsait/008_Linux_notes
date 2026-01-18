
<!-- Y: link create of authorized_keys -->

```bash 
ln -sf /shared/authorized_keys /home/examuser-ubi/.ssh/authorized_keys
```

 when systemd starts the SSH service normally, it will automatically generate missing host keys.


 <!-- IMP: Step 2 — Generate SSH keys on your HOST MACHINE:  -->
 
 ``` bash 
ssh-keygen -t ed25519 -f ~/.ssh/mycontainerkey
# Y: inside HOST MASHINE
```

This creates:
Private key: ~/.ssh/mycontainerkey
Public key: ~/.ssh/mycontainerkey.pub

<!-- Y: Step 3 — Put PUBLIC KEY into your shared file: -->

```bash
cat ~/.ssh/mycontainerkey.pub >> ./shared/authorized_keys
```

<!-- G:CONNECTIONS:  -->

```bash 
ssh -i ~/.ssh/mycontainerkey examuser-xxxx@localhost -p 2201
```



<!-- Y: if we dont want to try ssh key then  -->

```bash 
ssh  examuser-xxxx@localhost -p 2201
```


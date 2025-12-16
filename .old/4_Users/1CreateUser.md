# User Management in Linux

## 1. User Naming Rules:

- **Username**: Only **lowercase letters, numbers, and underscores (`_`)**.
- **User ID**:
  - `0`: Reserved for `root` user.
  - `1 - 999`: Reserved for system users.
  - `1001`: Default for regular users.
  - **Note**: The `-u` flag in `adduser` should be greater than `1001` for regular users.

---

## 2. Creating a New User:

```bash
adduser <username> 󰿄
---or---
adduser -u 1050 -home /home/testDirectory -shell /bin/zsh -c "This is a test user." <username> 󰿄
```

### params:

1. -u = (UID) set user id
2. -home = set user directory
3. -shell = set default shell
4. -c = mention comments

---

## 3. Tips:

### A:

```bash
/etc/passwd (directory)
```

<!-- TAG: the above location stores everyting (retyping the location will open preview window.) -->

<!-- Y: zsh: -->

```bash
 cat /etc/passwd
```

#### `OP- mukuldk:x:1000:1000:,,,:/home/mukuldk:/usr/bin/zsh  `

here

#### 1:2:3:4:5:6:7:

are:

1. = usernames
2. = passward in harsh format in /etc/shadow.
3. = UID User ID (e.g., 1000)
4. = primary gorup id for users GID
5. = comments for user
6. = home directory
7. = shell

8. = GID Primary group ID
9. = user id
10. = Comments Optional field for user details or description
11. = Home The user's home directory (e.g., /home/mukuldk)
12. = Shell The shell that the user uses (e.g., /usr/bin/zsh)

### B:

```bash
cat etc/shadow
```

#### `op - `

mukuldk:$y$j9T$7XXjzYZqkXYiP6Oddo.px1$jQQQczRwyaAdyA4mn4w2sQXMkYDA4eQVJath0SPZZm5:19998:0:99999:7:::
mysql:!:19999::::::
sshd:!:20002::::::
mongodb:!:20004::::::
mdk:$y$j9T$ta.6Ge8AkbiMCFtdthugx0$xGbJG0nvvVdwoy.UE2XSXGvVIwjJLEMLZkdQZ6.T2G7:20062:0:99999:7:::

1. Username The user's login name
2. Password The hashed password
3. Last Change The last date the password was changed
4. Min Days The minimum number of days between password changes
5. Max Days The maximum number of days before password expires
6. Expire Number of days before the account expires
7. Inactive Days after password expiration before account is disabled

## 4. Chaneg Password:

<!-- Y: zsh: -->

```bash
passwd <username>
```

---

xxxx some examples of .md usages:

- [ ] Task that is not completed
- [x] Task that is completed
- [ ] Configure static IP address on WSL2
- 🚧 **TODO**: Set up SSH server and test remote access

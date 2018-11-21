# Install server to host docker containers.

## Install Arch Linux server on EC2

* Search for *arch-linux* in Community AIM.
* Install the last version of *arch-linux*

## Update package manager repositories

```
pacman -Suy
```


## Install docker

https://wiki.archlinux.org/index.php/docker

```
pacman docker
```


# Dev docker image

```
pacman -Suy
pacman -S --noconfirm vim nginx supervisor python python-pip
pacman -S postgresql
```

## supervisord.conf

```
[program:nginx]
command=/usr/sbin/nginx -g "daemon off;"
```


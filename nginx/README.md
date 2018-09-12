# nginx

## build

```bash
docker build -t jnst/nginx .
```

## run

```bash
docker run -it --rm -p 80:80 jnst/nginx
```

## check

```bash
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
acc69bffbf05        jnst/nginx          "nginx -g 'daemon of…"   48 seconds ago      Up 46 seconds       0.0.0.0:80->80/tcp   sharp_thompson
```

```bash
$ docker exec -it acc69bffbf05 /bin/bash
root@acc69bffbf05:/# ls -Al /usr/share/nginx/html/
total 24
-rw-r--r-- 1 root root   494 Aug 28 13:32 50x.html
-rw-r--r-- 1 root root   612 Aug 28 13:32 index.html
-rw-r--r-- 1 root root 13885 Sep 12 12:40 translimit.html
```

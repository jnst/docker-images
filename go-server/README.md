# Go server with multi-stage build

## Non multi-stage build

```bash
docker build -t jnst/go-server-before -f Dockerfile.old .
docker run -it --rm jnst/go-server-before
```

## Multi stage build

```bash
docker build -t jnst/go-server-after .
docker run -it --rm jnst/go-server-after
```

## Check image size

```bash
$ docker images

REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
jnst/go-server-before     latest              10887c9456ed        16 hours ago        316MB
jnst/go-server-after      latest              50d2774da753        16 hours ago        11MB
```

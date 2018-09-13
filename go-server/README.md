# go-server with multi-stage build

## non multi stage build

```bash
docker build -t jnst/go-server-before -f Dockerfile.old .
docker run -it --rm jnst/go-server-before
```

## multi stage build

```bash
docker build -t jnst/go-server-after .
docker run -it --rm jnst/go-server-after
```

## check image size

```bash
docker images
```

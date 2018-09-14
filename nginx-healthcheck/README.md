# Docker's health-check feature with Nginx

## Build

```bash
docker build -t nginx-health-check .
```

## Run

```bash
docker run -it --rm nginx-health-check
```

## Check

Make sure that status is `healthy`.

```bash
docker ps
```

## Link

* http://jnst.hateblo.jp/entry/2018/08/09/220218

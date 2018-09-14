# MySQL

## Run

```bash
docker run -it --rm -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=sample_db mysql:5.7
```

## Connect

```bash
brew install mysql
```

```bash
$ mysql -h 127.0.0.1 -u root -p

mysql> show databases;
```

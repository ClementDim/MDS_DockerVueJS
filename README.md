# Dockerize VueJS project with MySql database

## .Env config 

```
MYSQL_DATABASE=%enter database name%
MYSQL_ROOT_PASSWORD=%enter database root password%
MYSQL_USER= %enter database user name%
MYSQL_PASSWORD= %enter database user password%
DB_PASSWORD=%enter database password%
```

## Project setup

```
docker-compose up --build
```


### Ports

```
Database (Mysql) : ::3306
App (VueJS): ::80
SGBD (PhpMyAdmin): ::8080
```

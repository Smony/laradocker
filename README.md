# LaraDocker 🐳

**LaraDocker** is a full development environment for **Laravel**.


## Clone Laradock

```shell
git clone https://github.com/Smony/laradocker.git
```

## rename `.env.example` to `.env`.

```shell
cp .env.example .env
```

## Run containers

```shell
docker-compose up -d nginx
```
**nginx** contains **php**, **mysql**, **redis**, **artisan**, **composer**, **npm**, **phpunit**  

There are more containers **postgres**, **phpmyadmin**
```shell
docker-compose up -d postgres phpmyadmin
```

## Open your browser and visit

```shell
http://localhost
```

## Working directory

```shell
src
```

You need to clear the contents of the `src` directory
before installation **Laravel**
```shell
docker-compose run --rm composer create-project --prefer-dist laravel/laravel:^8.0 .
```

## Commands

```shell
docker-compose run --rm composer
docker-compose run --rm npm
docker-compose run --rm artisan
docker-compose run --rm phpunit
```

## Example

```shell
docker-compose run --rm composer install
docker-compose run --rm composer update
docker-compose run --rm composer dump 

docker-compose run --rm npm install
docker-compose run --rm npm run dev

docker-compose run --rm php -v
docker-compose run --rm artisan config:cache
```

## Create alias

Оpen file **~/.bashrc**, or **.zshrc**

```shell
alias dca='docker-compose run --rm artisan'
alias dcc='docker-compose run --rm composer'
alias dc='docker-compose'
```

## Example

```shell
dca config:cache
dcc dump
```

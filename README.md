## LaraDocker

`src` project directory.

clear project directory and `docker-compose run --rm composer create-project --prefer-dist laravel/laravel:^8.0 .`

install:
- `docker-compose run --rm composer install`
- `docker-compose run --rm npm install`

ports:
- **nginx** - `:80`
- **mysql** - `:3306`
- **php** - `:9000`
- **redis** - `:6379`

run commands:
- `docker-compose run --rm composer`
- `docker-compose run --rm npm`
- `docker-compose run --rm artisan`
- `docker-compose run --rm phpunit`

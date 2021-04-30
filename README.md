Qiita:
https://qiita.com/harayama2/items/b721a2f474f7d81ba880

# README

Development template for Rails6.1 and PG.

```
NODE_VERSION: '14-alpine'
RUBY_VERSION: '2.7-alpine'
YARN_VERSION: '1.22.5'
RAILS_VERSION: '6.1'
```

## Usage

1. Create `.env`

```
# .env

# Database
DATABASE_USER=root
DATABASE_PASSWORD=password
DATABASE_HOST=postgres
DATABASE_PORT=5432
DATABASE_DEV_NAME=app_development
DATABASE_TEST_NAME=app_test
```

2. Build

```bash
$ docker-compose build
```

3. Create database

```bash
$ docker-compose run --rm backend rails db:setup
```

4. Up

```bash
$ docker-compose up
```

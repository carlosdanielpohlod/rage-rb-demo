# rage.rb demo

Minimal REST API using [rage.rb](https://github.com/rage-rb/rage) + ActiveRecord + SQLite.

## Requirements

- Docker
- Docker Compose

## Running

```bash
docker compose up
```

Migrations and seed run automatically on server start.

## Migrations

Migrations live in `db/migrate/` and are applied automatically at boot via `ActiveRecord::MigrationContext`.

To run them manually:

```bash
docker compose run --rm app bundle exec ruby -e \
  "require './config/application'; ActiveRecord::MigrationContext.new('db/migrate').migrate"
```

## Endpoints

```bash
# health check
curl localhost:3000/

# list posts
curl localhost:3000/posts
```

## Structure

```
app/
  controllers/
    application_controller.rb   # GET /
    posts_controller.rb         # GET /posts
  models/
    post.rb
config/
  initializers/
    database.rb                 # runs migrations and seed on boot
  database.yml
  routes.rb
db/
  migrate/
    20260513000000_create_posts.rb
  seeds.rb
```

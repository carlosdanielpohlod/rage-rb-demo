# rage.rb demo

Minimal REST API using [rage.rb](https://github.com/rage-rb/rage) + ActiveRecord + SQLite.

## Requirements

- Docker
- Docker Compose

## Running

```bash
docker compose up
```

The database is created and seeded automatically on first run.

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
    database.rb                 # schema setup on boot
  database.yml
  routes.rb
db/
  seeds.rb                      # initial data
```

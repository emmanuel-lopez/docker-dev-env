# Docker Database Development Environment
Setups a Postgres database and PGAdmin web interface.

|File                        |Purpose                       |
|----------------------------|------------------------------|
| README.md                  |                              |
| database-dev-secret.env    | Environment variables file   |
| database-dev-secret.pgpass | Postgres username/password   |
| database-dev-server.json   | PGAdmin server config        |
| docker-compose.yml         | Docker Compose file          |
| postgres-init-schema.sql   | Postgres initialization file |

### postgres-init-schema.sql
Add SQL statements to setup schema or initialize the database

### Note
 * Port over > 1024 used to support rootless docker
 * Restricted to requests from localhost
 * These limitations can be changed/removed in the docker-compose.yml file
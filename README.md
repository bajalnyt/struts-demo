# Struts 2 Demo with PostgreSQL

A minimal Struts 2 web application that reads customers from a PostgreSQL table and displays them in a table.

## Prerequisites
- Java 11+ (JDK)
- Maven 3.8+
- Docker (and Docker Compose)

## Quickstart

1. Start PostgreSQL via Docker (mapped to host port 5433 to avoid conflicts):

```bash
docker compose up -d postgres
```

This starts PostgreSQL with database `strutsdb` and user/password `struts/struts`, and creates/seeds the `customer` table using `db/init.sql`.

2. Export DB env vars for the app (optional if using defaults below):

```bash
export DB_HOST=localhost
export DB_PORT=5433
export DB_NAME=strutsdb
export DB_USER=struts
export DB_PASSWORD=struts
```

3. Run the web app with Jetty:

```bash
mvn -q jetty:run
```

4. Open the app:

- Customers list: `http://localhost:8080/customers`
- Home: `http://localhost:8080/`

## Configuration

The app reads DB connection settings from environment variables with defaults:

- `DB_HOST` (default: `localhost`)
- `DB_PORT` (default: `5432` — use `5433` if you follow the compose mapping)
- `DB_NAME` (default: `strutsdb`)
- `DB_USER` (default: `struts`)
- `DB_PASSWORD` (default: `struts`)

## Notes
- For a production setup you would typically configure a connection pool and JNDI DataSource; this demo uses direct JDBC for simplicity.
- The app uses Struts 2.5.x (javax.servlet) and runs with Jetty 9 for local development.

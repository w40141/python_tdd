#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z web-tdd-db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

exec "$@"

# cd /usr/src/app && uvicorn app.main:app --reload --workers 1 --host 0.0.0.0 --port 8000

#!/bin/sh

# cd /project && pdm run uvicorn app.main:app --reload --port=8000 --host=0.0.0.0
# echo "Start"

echo "Waiting for postgres..."

while ! nc -z web-db 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

exec "$@"

#!/bin/bash
set -e

echo "Waiting for PostgreSQL to be ready..."
sleep 10  # Or implement a readiness check if needed

echo "Creating database..."
psql -h pos-db-pg -U postgres -d postgres -f create-database.sql

echo "Running schema setup..."
psql -h pos-db-pg -U postgres -d posdb -f create-schema.sql

echo "Inserting data..."
psql -h pos-db-pg -U postgres -d posdb -f insert-data.sql

echo "✅ Database initialized."

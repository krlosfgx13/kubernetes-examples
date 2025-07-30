#!/bin/bash
set -e

echo "Waiting for PostgreSQL to be ready..."
sleep 10  # Or implement a readiness check if needed

echo "Creating database..."
psql -h db-pg -U postgres -d postgres -f create-database.sql

echo "Running schema setup..."
psql -h db-pg -U postgres -d bankingappdb -f create-schema.sql

echo "Inserting data..."
psql -h db-pg -U postgres -d bankingappdb -f insert-data.sql

echo "✅ Database initialized."

#!/usr/bin/env bash
# run default entrypoint script so the DB spins up
./usr/local/bin/docker-entrypoint.sh
# Load data into PostreSQL
psql -f /tmp/data-db/demo-small-en-20170815.sql -U postgres

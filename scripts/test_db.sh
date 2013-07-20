export PGDATA=~/.pgdata

psql template1 -c "DROP DATABASE IF EXISTS test";
psql template1 -c "CREATE DATABASE test";

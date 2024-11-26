cd
pgsql/bin/initdb -D pgdata
pgsql/bin/pg_ctl -D pgdata start
pgsql/bin/psql -h localhost -d postgres

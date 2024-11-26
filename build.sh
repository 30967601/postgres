rm -rf /home/hututuzi/pgsql
mkdir /home/hututuzi/pgsql
make clean
./configure --prefix=/home/hututuzi/pgsql/ --enable-debug --enable-depend --enable-cassert CFLAGS=-O0
make -j18 
# make check
make install
rm -rf /home/hututuzi/pgdata
mkdir /home/hututuzi/pgdata
cd
pgsql/bin/initdb -D pgdata
pgsql/bin/pg_ctl -D pgdata start

# pgsql/bin/psql -h localhost -d postgres
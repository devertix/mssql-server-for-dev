
for v in "2019";do
    cd $v && docker build -t ghcr.io/devertix/mssql-server-for-dev:$v . && cd ..
done

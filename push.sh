
for v in "2019" "2022";do
    docker push ghcr.io/devertix/mssql-server-for-dev:$v
done

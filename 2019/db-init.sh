#!/bin/sh

echo "running set up script"
sleep 10

for i in {1..100};
do
    /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P Alma1234 -d master -C -i /init.sql
    if [ $? -eq 0 ]
    then
        echo "setup.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done


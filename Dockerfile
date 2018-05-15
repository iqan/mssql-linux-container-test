FROM microsoft/mssql-server-linux

RUN mkdir /work 

COPY /src/test.bak /work
COPY /src/RestoreDb.sql /work
COPY /src/Restore.sh /work

WORKDIR /work

RUN chmod 755 Restore.sh

RUN ./Restore.sh RestoreDb.sql

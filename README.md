This is an experimental docker image build script. In this docker image is built from base microsoft/mssql-server-linux and it restores a database on build time from a sql server database backup.

> For linux - add `sudo` before executing commands.

# Build
docker build . -t test-db

# Run
docker run -d -p 1401:1433 -e SA_PASSWORD=Iqan#123 -e ACCEPT_EULA=Y test-db

# Connect
- Server: localhost,1401
- SQL Authentication
- UserName: sa
- Password: Iqan#123


# Extra
- Run container with interactive session:
`docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Iqan#123" -p 1401:1433 --name sql -it test-db bash`

USE master
GO
RESTORE DATABASE test 
FROM DISK = '/work/test.bak' WITH 
MOVE 'test' TO '/var/opt/mssql/data/test/test.mdf',
MOVE 'test_log' TO '/var/opt/mssql/data/test/test_log.ldf'
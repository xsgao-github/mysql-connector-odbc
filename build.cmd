git clean -x -f -d
set MYSQL_DIR=C:\PROGRA~1\MySQL\MYSQLS~1.0
cmake -G "Visual Studio 17 2022" -DSTATIC_MSVCRT:BOOL=TRUE -DWITH_DEBUG=1 -DWITH_NODEFAULTLIB=libcmt
devenv .\MySQL_Connector_ODBC.sln /build Debug
copy "%MYSQL_DIR%\lib\libmysql.dll" .\lib\Debug\.
.\bin\Debug\myodbc-installer.exe -r -d -n "MySQL ODBC 9.2 ANSI Driver"
.\bin\Debug\myodbc-installer.exe -a -d -n "MySQL ODBC 9.2 ANSI Driver" -t "DRIVER=C:\Users\sgao\GitHub\xsgao\mysql-connector-odbc\lib\Debug\myodbc9a.dll;SETUP=C:\Users\sgao\GitHub\xsgao\mysql-connector-odbc\lib\Debug\myodbc9S.dll"
.\bin\Debug\myodbc-installer.exe -r -d -n "MySQL ODBC 9.2 Unicode Driver"
.\bin\Debug\myodbc-installer.exe -a -d -n "MySQL ODBC 9.2 Unicode Driver" -t "DRIVER=C:\Users\sgao\GitHub\xsgao\mysql-connector-odbc\lib\Debug\myodbc9w.dll;SETUP=C:\Users\sgao\GitHub\xsgao\mysql-connector-odbc\lib\Debug\myodbc9S.dll"

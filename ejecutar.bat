echo off
set /p usuario=usuario:
set /p servidor=servidor oracle:
set /p HOME_SQL=Path donde se encuentra SQLPlus:

if not exist %HOME_SQL%\sql.exe goto path_error

%HOME_SQL%\sql.exe %usuario%@%servidor% @main.sql

echo Ejecucion correcta

:path_error
echo La ruta de SQL indicada no es correcta

echo este no es parte del label
pause
@echo off
rem Root OSGEO4W home dir to the same directory this script exists in
set OSGEO4W_ROOT=C:\Program Files\QGIS Pisa
rem Convert double backslashes to single
set OSGEO4W_ROOT=%OSGEO4W_ROOT:\\=\%
echo. & echo OSGEO4W home is %OSGEO4W_ROOT% & echo.
echo. & echo OSGEO4W home is %OSGEO4W_ROOT% & echo.

set PATH=%OSGEO4W_ROOT%\bin;%PATH%

rem Add application-specific environment settings
for %%f in ("%OSGEO4W_ROOT%\etc\ini\*.bat") do call "%%f"

rem List available o4w programs
rem but only if osgeo4w called without parameters

@echo on

rem on supprime les dalles vides

rem for /f %%i in ('dir /b /ad "D:\Documents\PROJETS\CRACAL\Ortho_lorraine2015\pyr"') do %%i >D:\Documents\PROJETS\CRACAL\Ortho_lorraine2015\pyr.txt

for /r "D:\Documents\PROJETS\CRACAL\Ortho_lorraine2015\pyr" %%i in (*.tif) do (
if "%%~zi" lss "2000000" move %%i "D:\Documents\PROJETS\CRACAL\Ortho_lorraine2015\vides\%%~ni.tif"
)

pause

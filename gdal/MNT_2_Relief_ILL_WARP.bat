@echo off
rem Root OSGEO4W home dir to the same directory this script exists in
set OSGEO4W_ROOT=C:\Program Files\QGIS Dufour
rem Convert double backslashes to single
set OSGEO4W_ROOT=%OSGEO4W_ROOT:\\=\%
echo. & echo OSGEO4W home is %OSGEO4W_ROOT% & echo.

set PATH=%OSGEO4W_ROOT%\bin;%PATH%

rem Add application-specific environment settings
for %%f in ("%OSGEO4W_ROOT%\etc\ini\*.bat") do call "%%f"
@echo on

rem assignation d'une value nodata

for %%G IN ("C:\LIDAR\relief_ill\*.tif") DO (
"C:/Program Files/QGIS Dufour/bin/gdalwarp" -t_srs EPSG:3948 -dstnodata -9999 "%%G" "C:\LIDAR\relief_ill2\%%~nG.tif")


pause

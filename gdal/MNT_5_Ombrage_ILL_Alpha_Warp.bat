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

rem on assigne une nodata value pour l'ombrage

for %%F IN (C:\LIDAR\ombrage_ill\*.tif) DO (
	"C:\Program Files\QGIS Dufour\bin\gdalwarp" -t_srs EPSG:3948 -ot Int16 -dstnodata -9999 -of GTiff "%%F" "C:\LIDAR\ombrage_ill3\%%~nF.tif"
)

pause

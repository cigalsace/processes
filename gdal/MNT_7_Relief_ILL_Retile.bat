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

rem calcul de la pyramide relief https://www.cigalsace.org/mapfishapp/map/8b619d41c455994c485239a5c8bcee61

"C:/Program Files/QGIS Dufour/bin/gdal_retile" -v -r bilinear -co TILED=TRUE -co COMPRESS=LZW -ps 2048 2048 -s_srs EPSG:3948 -levels 7 -targetDir C:\LIDAR\MNTpyramidREL -useDirForEachRow C:\LIDAR\MNT_REL_ILL_CC48_50cm.vrt

pause

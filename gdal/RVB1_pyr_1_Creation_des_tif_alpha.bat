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

rem @echo off

@echo on

rem on calcul le shape d'index des raster
rem "C:\Program Files\QGIS Pisa\bin\gdaltindex" T:\CIGAL\Retile\ortho_lorraine\index\index54.shp G:\ORTHOHR\1_DONNEES_LIVRAISON_2015-12-00210\OHR_RVB_0M20_JP2-E100_LAMB93_D54-2015\*.jp2

rem pour chaque dalle on assigne un 4�me canal alpha
for %%G IN (G:\ORTHOHR\1_DONNEES_LIVRAISON_2015-12-00210\OHR_RVB_0M20_JP2-E100_LAMB93_D54-2015\*.jp2) DO (
"C:\Program Files\QGIS Pisa\bin\gdalwarp" -s_srs EPSG:2154 -t_srs EPSG:2154 -r bilinear -cutline T:\CIGAL\Retile\ortho_lorraine\index\index54.shp -dstalpha -of GTiff "%%G" "F:\54_A\%%~nG.tif"
"C:\Program Files\QGIS Pisa\bin\gdal_translate" -co COMPRESS=LZW -co PREDICTOR=2 "F:\54_A\%%~nG.tif" "F:\54_A\%%~nG_A.tif"
del "F:\54_A\%%~nG.tif" /Q

)

pause

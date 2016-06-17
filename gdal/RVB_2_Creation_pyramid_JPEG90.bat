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

rem création du vrt unique qui recense les dalles

rem for %%i in ("F:\54_A\*.tif") do echo %%i >> "T:\CIGAL\Retile\ortho_lorraine\index\liste54.txt"

rem "C:\Program Files\QGIS Pisa\bin\gdalbuildvrt" -input_file_list "T:\CIGAL\Retile\ortho_lorraine\index\liste54.txt" "T:\CIGAL\Retile\ortho_lorraine\index\liste54.vrt"

"C:\Program Files\QGIS Pisa\bin\gdal_retile" -v -levels 7 -ps 2048 2048 -r bilinear -co TILED=TRUE -co COMPRESS=JPEG -co JPEG_QUALITY=90 -co PHOTOMETRIC=RGB -co ALPHA=YES -co INTERLEAVE=BAND  -s_srs EPSG:2154 -targetDir K:\pyr54 -useDirForEachRow "T:\CIGAL\Retile\ortho_lorraine\index\liste54.vrt"

pause



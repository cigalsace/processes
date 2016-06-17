@echo off
rem Root OSGEO4W home dir to the same directory this script exists in
set OSGEO4W_ROOT=C:\Program Files\QGIS Dufour
rem Convert double backslashes to single
set OSGEO4W_ROOT=%OSGEO4W_ROOT:\\=\%
echo. & echo OSGEO4W home is %OSGEO4W_ROOT% & echo.

set PATH=%OSGEO4W_ROOT%\bin;%PATH%

rem Add application-specific environment settings
for %%f in ("%OSGEO4W_ROOT%\etc\ini\*.bat") do call "%%f"
@echo off

rem liste des tiff dans du txt

for %%i in (C:\LIDAR\MNT_relief_ill2\*.tif) do echo %%i >> C:\LIDAR\MNT_relief_ill2\listeRelMNT.txt

@echo on

rem contruction du vrt

"C:\Program Files\QGIS Dufour\bin\gdalbuildvrt" -input_file_list "C:\LIDAR\MNT_relief_ill2\listeRelMNT.txt" C:\LIDAR\MNT_REL_ILL_CC48_50cm.vrt"



pause

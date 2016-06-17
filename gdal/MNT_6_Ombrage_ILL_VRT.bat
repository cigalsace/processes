@echo off
rem Root OSGEO4W home dir to the same directory this script exists in
set OSGEO4W_ROOT=C:\Program Files\QGIS Dufour
rem Convert double backslashes to single
set OSGEO4W_ROOT=%OSGEO4W_ROOT:\\=\%
echo. & echo OSGEO4W home is %OSGEO4W_ROOT% & echo.

set PATH=%OSGEO4W_ROOT%\bin;%PATH%

rem Add application-specific environment settings
for %%f in ("%OSGEO4W_ROOT%\etc\ini\*.bat") do call "%%f"

rem on liste les tiff

for %%i in (C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_ombrage_ill3\*.tif) do echo %%i >> C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_ombrage_ill3\listeOmbMNT.txt

@echo on

rem on calcule le vrt
"C:\Program Files\QGIS Dufour\bin\gdalbuildvrt" -input_file_list "C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_ombrage_ill3\listeOmbMNT.txt" C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_OMB_ILL_CC48_50cm.vrt"



pause

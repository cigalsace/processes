@echo off
rem on liste les tiff

for %%i in (C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_ombrage_ill3\*.tif) do echo %%i >> C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_ombrage_ill3\listeOmbMNT.txt

@echo on

rem on calcule le vrt
"C:\Program Files\QGIS Dufour\bin\gdalbuildvrt" -input_file_list "C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_ombrage_ill3\listeOmbMNT.txt" C:\Users\klipfeljp\Documents\PROJETS\GEOPLATEFORME\TEST\LIDAR\MNT_OMB_ILL_CC48_50cm.vrt"



pause

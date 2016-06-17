@echo off

rem liste des tiff dans du txt

for %%i in (C:\LIDAR\MNT_relief_ill2\*.tif) do echo %%i >> C:\LIDAR\MNT_relief_ill2\listeRelMNT.txt

@echo on

rem contruction du vrt

"C:\Program Files\QGIS Dufour\bin\gdalbuildvrt" -input_file_list "C:\LIDAR\MNT_relief_ill2\listeRelMNT.txt" C:\LIDAR\MNT_REL_ILL_CC48_50cm.vrt"



pause

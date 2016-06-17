@echo on

rem assignation d'une value nodata

for %%G IN ("C:\LIDAR\relief_ill\*.tif") DO (
"C:/Program Files/QGIS Dufour/bin/gdalwarp" -t_srs EPSG:3948 -dstnodata -9999 "%%G" "C:\LIDAR\relief_ill2\%%~nG.tif")


pause

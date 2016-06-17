@echo on

rem on assigne une nodata value pour l'ombrage

for %%F IN (C:\LIDAR\ombrage_ill\*.tif) DO (
	"C:\Program Files\QGIS Dufour\bin\gdalwarp" -t_srs EPSG:3948 -ot Int16 -dstnodata -9999 -of GTiff "%%F" "C:\LIDAR\ombrage_ill3\%%~nF.tif"
)

pause

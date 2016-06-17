@echo on

rem conversion des xyz

for %%F IN (F:\LIDAR\*.xyz) DO (
	"C:\Program Files\QGIS Dufour\bin\gdal_translate" -a_srs EPSG:3948 -of GTiff "%%F" "C:\LIDAR\relief_ill\%%~nF.tif"
)

pause

@echo on

rem calcul de l'ombrage

for %%F IN (C:\LIDAR\relief_ill2\*.tif) DO (
	"C:\Program Files\QGIS Dufour\bin\gdaldem" hillshade -co tiled=yes -compute_edges "%%F" "C:\LIDAR\ombrage_ill\%%~nF.tif"
)

pause

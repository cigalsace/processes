@echo off
rem Root OSGEO4W home dir to the same directory this script exists in
call "C:\Program Files\QGIS 2.14.4\bin\o4w_env.bat"

rem List available o4w programs
rem but only if osgeo4w called without parameters

rem @if [%1]==[] (cmd.exe /k o-help) else (cmd /c "%*")

@echo on

rem Création des BIGTIFF
call gdal_merge -init 255 -o output1.tif input1.tif input2.tif
call gdal_merge -init 255 -o output1.tif input3.tif input4.tif
call gdal_merge -init 255 -o output1.tif input4.tif input5.tif

rem Création des BIGTIFF
for %%G IN (path\*.tif) DO (
rem Compression du tif
gdal_translate -a_srs EPSG:2154 -co COMPRESS=DEFLATE -co BIGTIFF=YES -co "TILED=YES" -co "BLOCKXSIZE=512" -co "BLOCKYSIZE=512" %%G path2\%%~nG_O.tif
rem calcul des overview
gdaladdo -ro -r average --config COMPRESS_OVERVIEW DEFLATE --config GDAL_TIFF_OVR_BLOCKSIZE 512 K:\67\%%~nG_O.tif 2 4 8 16 32 64 128
)

pause



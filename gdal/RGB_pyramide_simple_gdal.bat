GOTO:REM
==================================================================

Chaîne de procédure préparation en pyramide à partir d'un fichier

==================================================================
:REM


@echo off
rem chargement des bibliothèques osgeo
call "C:\Program Files\QGIS 2.18\bin\o4w_env.bat"

@echo on

REM Création des dossiers
set INPUT_PATH=T:\ORTHO_HISTO_EMS\scripts\input\
set OUTPUT_PATH=T:\ORTHO_HISTO_EMS\scripts\output

REM GOTO:step1

md %INPUT_PATH%
md %OUTPUT_PATH%

REM calcul de la pyramide
gdal_retile -v -levels 7 -ps 4096 4096 -s_srs EPSG:2154 -r bilinear -co COMPRESS=JPEG -co TILED=TRUE -co INTERLEAVE=BAND -co BLOCKXSIZE=512 -co BLOCKYSIZE=512 -targetDir %OUTPUT_PATH% %INPUT_PATH%\test.ecw

pause
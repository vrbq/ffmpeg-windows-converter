@echo off
setlocal enabledelayedexpansion

REM Définir le chemin des dossiers "TO_CONVERT" et "CONVERTED"
set "input_folder=TO_CONVERT"
set "output_folder=CONVERTED"

REM Vérifier si le dossier de sortie existe, sinon le créer
if not exist "%output_folder%" mkdir "%output_folder%"

REM Naviguer vers le dossier d'entrée
cd "%input_folder%"

REM Fonction pour vérifier et effectuer la conversion en fonction du choix de l'utilisateur
:Conversion
set /P choice="Choisissez le type de conversion (slow/fast/ultrafast, appuyez sur Enter pour normal) : "
if "%choice%"=="slow" (
    set "preset=slow"
    set "preset_description=Slow"
) else if "%choice%"=="fast" (
    set "preset=fast"
    set "preset_description=Fast"
) else if "%choice%"=="ultrafast" (
    set "preset=ultrafast"
    set "preset_description=Ultrafast"
) else (
    set "preset=medium"
    set "preset_description=Normal"
)

REM Afficher la confirmation du paramètre choisi
echo.
echo Vous avez choisi le parametre : !preset_description!


REM Prévisualisation de la ligne de commande qui va se lancer
echo.
echo La ligne de commande qui sera exécutée est la suivante :
echo.
echo ffmpeg -i "%%f" -c:v libx264 -preset !preset! -crf 18 -c:a aac -b:a 192k "!output_path!"


REM Mettre en pause le script pendant 2 secondes
timeout /t 2 >nul

REM Convertir les fichiers vidéo dans le dossier d'entrée
for %%f in (*.avi *.mkv *.mov *.ts) do (
    set "filename=%%~nf"
    set "extension=%%~xf"

    REM Créer le chemin de sortie avec le même nom de fichier dans le dossier de sortie
    set "output_path=..\%output_folder%\!filename!.mp4"

    REM Convertir le fichier vidéo en fonction du choix de l'utilisateur
    ffmpeg -i "%%f" -c:v libx264 -preset !preset! -crf 18 -c:a aac -b:a 192k "!output_path!"
)

echo.
echo Conversion complete.
exit /b

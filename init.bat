@echo off

REM Étape 1: Chercher le chemin complet du sous-dossier ffmpeg/bin
set "ffmpeg_path=%cd%\ffmpeg\bin"

REM Étape 2: Vérifier si le chemin est déjà présent dans la variable PATH
echo %PATH% | findstr /i /c:"ffmpeg\bin" > nul
if errorlevel 1 (
    REM Le chemin n'est pas déjà présent, donc l'ajouter à la variable PATH
    set "PATH=%PATH%;%ffmpeg_path%"
    echo Chemin ajouté à la variable PATH.
) else (
    echo Le chemin est déjà présent dans la variable PATH. Aucune modification nécessaire.
)


echo %PATH% | findstr /i /c:"ffmpeg\bin" > nul
set "path_found=%errorlevel%"
if %path_found% equ 0 (
    timeout /t 1 >nul
    echo.
    echo SCRIPT OK ! Vous pouvez convertir.
    echo.
) else (
    echo ERREUR DANS LE SCRIPT !
)

REM Attendre jusqu'à ce que l'utilisateur appuie sur une touche pour fermer
pause > nul
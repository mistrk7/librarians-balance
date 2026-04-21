@echo off

set "FILES_TO_ZIP=data pack.png pack.mcmeta HELP_CONFIG.txt"
set "ZIP_NAME=./Librarian's Balance - vx.x.zip"
set "SEVENZIP_EXE=C:\Program Files\7-Zip\7z.exe"

"%SEVENZIP_EXE%" a "%ZIP_NAME%" %FILES_TO_ZIP%

if exist "%ZIP_NAME%" (
    echo.
    echo [SUCCESS] Successfully created. Don't forget to update pack.mcmeta!"
) else (
    echo.
    echo [ERROR] Failed.
)

pause
echo.
@echo off
REM yt-dlp Batch Downloader - simple menu around yt-dlp

set "YTDLP=C:\yt-dlp.exe"
set "COOKIES=C:\cookies.txt"

:main_menu
cls
echo ==========================================
echo   yt-dlp Batch Downloader
echo ==========================================
echo.
echo Choose download path:
echo   1 - Desktop
echo   2 - Enter manual path
echo.
choice /c 12 /n /m "Press 1 or 2:"

if %errorlevel% equ 1 (
    set "OUTPUT=%USERPROFILE%\Desktop"
) else if %errorlevel% equ 2 (
    call :ask_manual_path
) else (
    goto main_menu
)

if not exist "%OUTPUT%" mkdir "%OUTPUT%" 2>nul
echo.
echo Download path: "%OUTPUT%"
echo.

:download_loop
echo Enter video URL (leave empty to exit): 
set "URL="
set /p "URL="
if "%URL%"=="" goto exit_script

echo.
echo Downloading: %URL%
echo ------------------------------------------

"%YTDLP%" --cookies "%COOKIES%" -f best -o "%OUTPUT%\%%(title)s.%%(ext)s" "%URL%"

if %errorlevel% equ 0 (
    echo Download completed successfully!
) else (
    echo Download finished with errors.
)

echo.
echo Press any key to download another video...
pause >nul
goto download_loop

:ask_manual_path
echo.
set /p "OUTPUT=Enter full path: "
if "%OUTPUT%"=="" goto ask_manual_path
goto :eof

:exit_script
echo.
echo Goodbye!
timeout /t 2 >nul
exit /b 0
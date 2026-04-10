@echo off
setlocal enabledelayedexpansion

========================================================
1: SOURCE FOLDER - WHERE OBS/MELD SAVES VIDEOS
========================================================

set "sourceFolder=%USERPROFILE%\Documents\Recordings"


========================================================
2: VIDEO FORMATS
========================================================

set "extensions=mp4 mkv mov"


========================================================
3: DESTINATION & OPERATIONS // BOSSES, CUTSCENES, ETC.
========================================================

echo.
echo Starting transfer operations...
echo.
echo Source: %sourceFolder%
echo.

call :MoveLatest "%sourceFolder%" "%sourceFolder%\Gameplay"

echo.
echo All moves complete.
pause
exit /b



========================================================
4: FUNCTION - MoveLatest
========================================================

:MoveLatest
set "source=%~1"
set "target=%~2"

if not exist "%target%" mkdir "%target%"

set "newestFile="
set "newestTime=0"

echo.
echo Checking for latest video in:
echo   "%source%"
echo Target folder:
echo   "%target%"
echo.

for %%e in (%extensions%) do (
    for %%f in ("%source%\*.%%e") do (
        if exist "%%f" (
            for %%A in ("%%f") do (
                set "fileTime=%%~tA"
                set "fileTime=!fileTime: =!"
                set "fileTime=!fileTime:/=!"
                set "fileTime=!fileTime::=!"
                set "fileTime=!fileTime:-=!"
                if !fileTime! gtr !newestTime! (
                    set "newestTime=!fileTime!"
                    set "newestFile=%%f"
                )
            )
        )
    )
)

if not defined newestFile (
    echo No video files found in this folder.
    goto :eof
)

echo Moving latest file:
echo   "!newestFile!"
echo To:
echo   "%target%"
move /Y "!newestFile!" "%target%" >nul
echo Move complete.

goto :eof

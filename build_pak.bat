@echo off
REM =====================================================================
REM FuJianTaoist Mod - Minimal PAK Builder (diagnostic version)
REM
REM This is intentionally simple to avoid any setup issues.
REM It just: checks divine.exe -> runs it -> done.
REM
REM Output: FuJianTaoist.pak next to this .bat
REM =====================================================================

echo.
echo ============================================
echo   FuJianTaoist PAK Builder (minimal)
echo ============================================
echo.

REM --- Folder where this .bat lives ---
set "HERE=%~dp0"
echo [1] Script folder: %HERE%

REM --- Check Mods folder ---
if exist "%HERE%Mods\FuJianTaoist" (
    echo [2] OK: Mods\FuJianTaoist found.
) else (
    echo [2] ERROR: Mods\FuJianTaoist NOT found!
    echo     This .bat must be in the folder containing Mods\ and Public\
    echo     Current folder: %HERE%
    echo.
    pause
    goto :eof
)

REM --- Check Public folder ---
if exist "%HERE%Public\FuJianTaoist" (
    echo [3] OK: Public\FuJianTaoist found.
) else (
    echo [3] ERROR: Public\FuJianTaoist NOT found!
    echo.
    pause
    goto :eof
)

REM --- Check divine.exe in script folder ---
if exist "%HERE%divine.exe" (
    echo [4] OK: divine.exe found in script folder.
    set "DIVINE=%HERE%divine.exe"
    goto :pack
)

REM --- Check divine.exe on PATH ---
where divine.exe >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo [4] OK: divine.exe found on PATH.
    set "DIVINE=divine.exe"
    goto :pack
)

REM --- divine.exe NOT FOUND ---
echo [4] ERROR: divine.exe NOT found!
echo.
echo divine.exe is REQUIRED to build .pak files.
echo It is part of lslib (LSLib):
echo   Download: https://github.com/Norbyte/lslib/releases
echo.
echo HOW TO FIX:
echo   1. Download the latest lslib zip from the link above.
echo   2. Extract it.
echo   3. Copy divine.exe into THIS folder:
echo      %HERE%
echo   4. Run build_pak.bat again.
echo.
echo OR edit this .bat and change the line
echo   set "DIVINE=..."
echo   to the full path of your divine.exe, e.g.
echo   set "DIVINE=C:\Tools\lslib\divine.exe"
echo.
pause
goto :eof

:pack
echo.
echo [5] Packing...
echo     Source: %HERE%
echo     Output: %HERE%FuJianTaoist.pak
echo.

REM --- Delete old pak ---
if exist "%HERE%FuJianTaoist.pak" del "%HERE%FuJianTaoist.pak"

REM --- Run divine (no compression flags to avoid version issues) ---
"%DIVINE%" -g bg3 -a create-package -s "%HERE%" -d "%HERE%FuJianTaoist.pak"
set "RC=%ERRORLEVEL%"
echo.
echo [6] divine exit code: %RC%

REM --- Result ---
if exist "%HERE%FuJianTaoist.pak" (
    echo.
    echo ============================================
    echo   SUCCESS! FuJianTaoist.pak created at:
    echo   %HERE%FuJianTaoist.pak
    echo ============================================
    echo.
    echo Next: drag this .pak into BG3 Mod Manager.
) else (
    echo.
    echo ============================================
    echo   FAILED - no .pak was created.
    echo   divine exit code: %RC%
    echo ============================================
    echo.
    echo If divine printed an error above, read it.
    echo Common fixes:
    echo   - Use the latest lslib version.
    echo   - Make sure the folder has no other .pak files.
    echo   - Try moving the folder to a path without spaces.
)

echo.
echo Press any key to close.
pause >nul

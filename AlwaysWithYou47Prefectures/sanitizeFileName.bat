@echo off
setlocal enabledelayedexpansion

rem Loop through all files in the current directory
for %%f in (*.*) do (
    set "filename=%%~nf"
    set "extension=%%~xf"
    
    rem Remove spaces from the filename
    set "newfilename=!filename: =!"
    
    rem Rename the file if the name has changed
    if not "!filename!"=="!newfilename!" ren "%%f" "!newfilename!!extension!"
)

echo All spaces have been removed from file names.
pause

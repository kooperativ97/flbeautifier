@echo off
echo Generating missing nfo and image files for you

for %%f in (*.fst) do (
    for /F "tokens=1,3 delims=." %%a in ("%%f") do (
       if not exist %%a.nfo (
        echo Missing nfo file for %%a
        echo Bitmap=%%a.png> %%a.nfo
        attrib +h "%%a.nfo"
       )
       if not exist %%a.png (
         echo Missing png file for %%a
         echo > %%a.png
       )
    )
)
echo created all missing files.
pause

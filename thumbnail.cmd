@echo off
echo Thumbnailing pictures for you

for %%f in (*.fst) do (
    for /F "tokens=1,3 delims=." %%a in ("%%f") do (
       python thumbnailer.py "%%a.png"
       attrib +h "%%a.png"
       if not exist %%a.nfo (
        echo Creating nfo file linking to %%a.png
        echo Bitmap=%%a.png> %%a.nfo
        attrib +h "%%a.nfo"
       )
    )
)
echo Done. All images should now have small size and nfos linking to them, take a look!
pause
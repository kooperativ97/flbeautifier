@echo off
echo Thumbnailing pictures for you

for %%f in (*.fst) do (
    for /F "tokens=1,3 delims=." %%a in ("%%f") do (
       python thumbnailer.py "%%a.png"
       attrib +h "%%a.png"
    )
)
echo Done. All images should now have small size!
pause
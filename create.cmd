@echo off
echo Generating missing image files for you

for %%f in (*.fst) do (
    for /F "tokens=1,3 delims=." %%a in ("%%f") do (
       if not exist %%a.png (
         echo Missing png file for %%a
         echo > %%a.png
       )
    )
)
echo created all missing images for your plugins. Now save the screenshots into the files!
pause

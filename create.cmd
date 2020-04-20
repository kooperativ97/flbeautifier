@echo off
echo Generating missing nfo and Image for you

for %%f in (*.fst) do (
    for /F "tokens=1,3 delims=." %%a in ("%%f") do (
       if not exist %%a.nfo (
        echo Bitmap = %%a.png > %%a.nfo
        attrib +h "%%a.nfo"
       )
       if not exist %%a.png (
         echo > %%a.png
         attrib +h "%%a.png"
       )
    )
)
pause
:: Bitmap=AAS Player.png
:: makes all the files that are  needed to make pictures for syntesizers 
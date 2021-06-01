@echo off
for %%F in (*.mp3) do (
   if exist "%%~nF.mp3" ( 
      ffmpeg -loop 1 -i "image.png" -i "%%~nF.mp3" -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest "%%~nF.mp4" 
   ) 
)
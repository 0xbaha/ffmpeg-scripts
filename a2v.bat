@echo off

:: destination video format
set dest_type="mp4"

:: arg2
:: select source type (mp3,mpeg)
set source_type=%2

:: arg3
:: select image type (jpg,png)
set image_type=%3

:: arg1: u = unique
:: using different image for each video
if %1==u (
   for %%F in (*.%source_type%) do (
      if exist "%%~nF.%source_type%" ( 
         ffmpeg -loop 1 -i "%%~nF.%image_type%" -i "%%~nF.%source_type%" -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest "%%~nF.%dest_type%" 
      ) 
   ) 
)

:: arg1: t = template
:: using sampe image
if %1==t (
   for %%F in (*.%source_type%) do (
      if exist "%%~nF.%source_type%" ( 
         ffmpeg -loop 1 -i "image.%image_type%" -i "%%~nF.%source_type%" -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest "%%~nF.%dest_type%" 
      ) 
   ) 
)
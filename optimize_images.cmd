@echo off

:: Set the input and output directories
set INPUT_DIR=images
set OUTPUT_DIR=images

:: Set the cwebp command
set CWEBP=.\bin\cwebp
set QUALITY=85
set TYPES=.png,.jpg

:: Set rm command
set RM=del

:: Loop through all files in the input directory
for %%t in (%TYPES%) do (
  for %%f in (%INPUT_DIR%\*%%t) do (
    %CWEBP% -q %QUALITY% -mt -o "%OUTPUT_DIR%\%%~nf.webp" "%%f"
    %rm% "%%f"
  )
)

echo Conversion complete!

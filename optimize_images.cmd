@echo off

:: Set the input and output directories
set INPUT_DIR=images
set OUTPUT_DIR=images

:: Set the cwebp command
set CWEBP=.\bin\cwebp
set QUALITY=85

:: Set rm command
set RM=del

:: Loop through all files in the input directory
for %%f in (%INPUT_DIR%\*.png) do (
  :: Convert PNG to WebP
  %CWEBP% -q %QUALITY% -mt -o "%OUTPUT_DIR%\%%~nf.webp" "%%f"
  %rm% "%%f"
)

for %%f in (%INPUT_DIR%\*.jpg) do (
  :: Convert JPG to WebP
  %CWEBP% -q %QUALITY% -mt -o "%OUTPUT_DIR%\%%~nf.webp" "%%f"
  %rm% "%%f"
)

echo Conversion complete!
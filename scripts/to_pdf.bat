@echo off
REM Get the filename without extension
set "output_name=%~n1.pdf"

REM Set output path (relative as in your original script)
set "output_file=..\figures\drawio\%output_name%"

REM Export using drawio
drawio --export --format pdf --output "%output_file%" --crop --border 16 "%~1"

REM Add the generated file to git
git add "%output_file%"
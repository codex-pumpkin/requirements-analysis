@echo off
REM Loop recursively through all .drawio files in ..\drawio\ and subfolders
for /R "..\drawio" %%f in (*.drawio) do (
    call to_pdf.bat "%%f"
)

@echo off
echo Opening NanhuiChatGPT...

if not exist "%~dp0\NanhuiChat\Scripts" (
    echo Creating venv...
    python -m venv NanhuiChat
    
    cd /d "%~dp0\NanhuiChat\Scripts"
    call activate.bat
    
    cd /d "%~dp0"
    pip install -r requirements.txt
)

goto :activate_venv

:launch
%PYTHON% NanhuiChatbot.py %*
pause

:activate_venv
set PYTHON="%~dp0\NanhuiChat\Scripts\Python.exe"
echo venv %PYTHON%
goto :launch

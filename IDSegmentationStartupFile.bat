@echo off
cd "C:\Users\alex\PycharmProjects\TrainYoloSegV8"

rem Activate the virtual environment using PowerShell silently
powershell -ExecutionPolicy Bypass -WindowStyle Hidden -File .\.venv\Scripts\Activate.ps1

rem Run uvicorn with the Python interpreter from the virtual environment in the background
start /B .\.venv\Scripts\python.exe -m uvicorn main:app --host 127.0.0.1 --port 8000

rem Optional: Close the console window immediately
exit

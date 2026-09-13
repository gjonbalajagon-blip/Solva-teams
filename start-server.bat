@echo off
title Solva Teams - local server
cd /d "%~dp0"
echo.
echo  Solva Teams - local preview
echo  ---------------------------
echo  Hape ne shfletues:  http://localhost:8000/
echo  Gjermanisht:        http://localhost:8000/de/
echo.
echo  Per ta ndalur: shtyp Ctrl+C ose mbylle kete dritare.
echo.
call npx --yes http-server -p 8000 -c-1
echo.
echo  Serveri u ndal.
pause

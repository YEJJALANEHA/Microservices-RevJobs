@echo off
echo ========================================
echo    RevJobs Complete Project Startup
echo ========================================
echo.

echo Starting Backend Services...
start "Backend Services" cmd /k "start-backend.bat"

echo Waiting for backend to initialize...
timeout /t 45 /nobreak

echo Starting Frontend...
start "Frontend" cmd /k "start-frontend.bat"

echo.
echo ========================================
echo Project is starting up!
echo.
echo Backend Services:
echo - Discovery Server: http://localhost:8761
echo - API Gateway: http://localhost:8081
echo.
echo Frontend:
echo - Application: http://localhost:3000
echo ========================================
pause
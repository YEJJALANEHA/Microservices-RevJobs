@echo off
echo ========================================
echo    RevJobs Health Check
echo ========================================
echo.

echo Checking service endpoints...
echo.

echo [1] Discovery Server (8761)...
curl -s http://localhost:8761 >nul 2>&1
if %errorlevel% equ 0 (
    echo ✓ Discovery Server is responding
) else (
    echo ✗ Discovery Server is not responding
)

echo [2] API Gateway (8081)...
curl -s http://localhost:8081 >nul 2>&1
if %errorlevel% equ 0 (
    echo ✓ API Gateway is responding
) else (
    echo ✗ API Gateway is not responding
)

echo [3] Frontend (3000)...
curl -s http://localhost:3000 >nul 2>&1
if %errorlevel% equ 0 (
    echo ✓ Frontend is responding
) else (
    echo ✗ Frontend is not responding
)

echo.
echo Checking running processes...
echo.

tasklist /fi "imagename eq java.exe" 2>nul | find "java.exe" >nul
if %errorlevel% equ 0 (
    echo ✓ Java processes are running (Backend Services)
) else (
    echo ✗ No Java processes found
)

tasklist /fi "imagename eq node.exe" 2>nul | find "node.exe" >nul
if %errorlevel% equ 0 (
    echo ✓ Node.js processes are running (Frontend)
) else (
    echo ✗ No Node.js processes found
)

echo.
echo ========================================
echo Health Check Complete!
echo.
echo Access URLs:
echo - Frontend: http://localhost:3000
echo - Discovery Server: http://localhost:8761
echo - API Gateway: http://localhost:8081
echo ========================================
pause
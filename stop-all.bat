@echo off
echo ========================================
echo    Stopping All RevJobs Services
echo ========================================
echo.

echo Stopping Java processes (Backend Services)...
taskkill /f /im java.exe 2>nul
if %errorlevel% equ 0 (
    echo ✓ Java processes stopped
) else (
    echo No Java processes found
)

echo.
echo Stopping Node.js processes (Frontend)...
taskkill /f /im node.exe 2>nul
if %errorlevel% equ 0 (
    echo ✓ Node.js processes stopped
) else (
    echo No Node.js processes found
)

echo.
echo Waiting for processes to terminate...
timeout /t 3 /nobreak

echo.
echo Checking if ports are free...
netstat -an | find ":8761" >nul
if %errorlevel% neq 0 (
    echo ✓ Port 8761 is free
) else (
    echo WARNING: Port 8761 still in use
)

netstat -an | find ":8081" >nul
if %errorlevel% neq 0 (
    echo ✓ Port 8081 is free
) else (
    echo WARNING: Port 8081 still in use
)

netstat -an | find ":3000" >nul
if %errorlevel% neq 0 (
    echo ✓ Port 3000 is free
) else (
    echo WARNING: Port 3000 still in use
)

echo.
echo ========================================
echo All services stopped!
echo You can now restart the project safely.
echo ========================================
pause
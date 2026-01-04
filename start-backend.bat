@echo off
echo Starting RevJobs Backend Services...
echo.

echo [1/9] Building Common Library...
cd Backend\Common-Lib
call mvn clean install -q
if %errorlevel% neq 0 (
    echo ERROR: Failed to build Common Library
    pause
    exit /b 1
)
cd ..\..

echo [2/9] Starting Discovery Server (Port 8761)...
start "Discovery Server" cmd /k "cd Backend\Discovery-Server && mvn spring-boot:run"
timeout /t 30 /nobreak

echo [3/9] Starting Config Server (Port 8888)...
start "Config Server" cmd /k "cd Backend\Config-Server && mvn spring-boot:run"
timeout /t 15 /nobreak

echo [4/9] Starting API Gateway (Port 8081)...
start "API Gateway" cmd /k "cd Backend\Api-Gateway && mvn spring-boot:run"
timeout /t 15 /nobreak

echo [5/9] Starting User Service (Port 8086)...
start "User Service" cmd /k "cd Backend\User-Service && mvn spring-boot:run"

echo [6/9] Starting Job Service (Port 8082)...
start "Job Service" cmd /k "cd Backend\Job-Service && mvn spring-boot:run"

echo [7/9] Starting Application Service (Port 8083)...
start "Application Service" cmd /k "cd Backend\Application-Service && mvn spring-boot:run"

echo [8/9] Starting Message Service (Port 8084)...
start "Message Service" cmd /k "cd Backend\Message-Service && mvn spring-boot:run"

echo [9/9] Starting Notification Service (Port 8085)...
start "Notification Service" cmd /k "cd Backend\Notification-Service && mvn spring-boot:run"

echo.
echo All services are starting...
echo Check individual windows for startup status.
echo Discovery Server Dashboard: http://localhost:8761
echo API Gateway: http://localhost:8081
pause
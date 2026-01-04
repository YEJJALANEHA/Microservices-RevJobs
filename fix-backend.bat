@echo off
echo ========================================
echo    FIXING YOUR PROJECT - STEP BY STEP
echo ========================================
echo.

echo STEP 1: Building Common Library...
cd Backend\Common-Lib
call mvn clean install -DskipTests
if %errorlevel% neq 0 (
    echo ERROR: Common Lib build failed!
    pause
    exit /b 1
)
cd ..\..
echo ✓ Common Library built successfully
echo.

echo STEP 2: Starting Discovery Server...
echo Opening new window for Discovery Server...
start "Discovery Server" cmd /k "cd Backend\Discovery-Server && mvn spring-boot:run -DskipTests"
echo Waiting 45 seconds for Discovery Server to start...
timeout /t 45 /nobreak
echo.

echo STEP 3: Starting User Service...
echo Opening new window for User Service...
start "User Service" cmd /k "cd Backend\User-Service && mvn spring-boot:run -DskipTests"
echo Waiting 20 seconds for User Service to start...
timeout /t 20 /nobreak
echo.

echo STEP 4: Starting API Gateway...
echo Opening new window for API Gateway...
start "API Gateway" cmd /k "cd Backend\Api-Gateway && mvn spring-boot:run -DskipTests"
echo Waiting 15 seconds for API Gateway to start...
timeout /t 15 /nobreak
echo.

echo ========================================
echo BACKEND IS STARTING!
echo.
echo Check these URLs:
echo - Discovery Server: http://localhost:8761
echo - API Gateway: http://localhost:8081
echo.
echo Now start your frontend with: npm run dev
echo ========================================
pause
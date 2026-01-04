@echo off
echo ========================================
echo    RevJobs System Check & Troubleshooting
echo ========================================
echo.

echo [1] Checking Java Installation...
java -version 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Java not found! Please install Java JDK 17+
    echo Download from: https://adoptium.net/
) else (
    echo ✓ Java is installed
)
echo.

echo [2] Checking Maven Installation...
mvn -version 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Maven not found! Please install Maven
    echo Download from: https://maven.apache.org/download.cgi
) else (
    echo ✓ Maven is installed
)
echo.

echo [3] Checking Node.js Installation...
node --version 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Node.js not found! Please install Node.js 18+
    echo Download from: https://nodejs.org/
) else (
    echo ✓ Node.js is installed
)
echo.

echo [4] Checking npm Installation...
npm --version 2>nul
if %errorlevel% neq 0 (
    echo ERROR: npm not found!
) else (
    echo ✓ npm is installed
)
echo.

echo [5] Checking MySQL Service...
sc query mysql 2>nul | find "RUNNING" >nul
if %errorlevel% neq 0 (
    echo WARNING: MySQL service not running
    echo Please start MySQL service or check if it's installed
) else (
    echo ✓ MySQL service is running
)
echo.

echo [6] Checking Port Availability...
netstat -an | find ":8761" >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8761 (Discovery Server) is already in use
)

netstat -an | find ":8081" >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 8081 (API Gateway) is already in use
)

netstat -an | find ":3000" >nul
if %errorlevel% equ 0 (
    echo WARNING: Port 3000 (Frontend) is already in use
)
echo.

echo [7] Checking Common Lib Build...
if exist "Backend\Common-Lib\target\common-lib-3.2.0.jar" (
    echo ✓ Common Library is built
) else (
    echo WARNING: Common Library not built. Run: cd Backend\Common-Lib && mvn clean install
)
echo.

echo ========================================
echo System Check Complete!
echo.
echo If you see any ERRORs above, please fix them before running the project.
echo If you see WARNINGs, they might affect the project startup.
echo ========================================
pause
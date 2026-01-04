@echo off
echo Starting RevJobs Frontend...
echo.

cd Frontend

echo Installing/Updating dependencies...
call npm install --legacy-peer-deps
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo Starting development server...
echo Frontend will be available at: http://localhost:3000
echo.
call npm run dev

pause
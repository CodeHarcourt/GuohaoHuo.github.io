@echo off
echo ==========================================
echo Starting synchronization with GitHub...
echo ==========================================

echo [1/3] Adding changes to staging area...
git add .

echo [2/3] Committing changes...
git commit -m "Auto-sync: %date% %time%"

echo [3/3] Pushing to remote repository...
git push origin main

echo ==========================================
if %ERRORLEVEL% EQU 0 (
    echo Synchronization successful!
) else (
    echo Synchronization failed. Please check the error messages above.
)
echo ==========================================
pause

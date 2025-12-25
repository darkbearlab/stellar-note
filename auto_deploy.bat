@echo off
echo [1/3] Pulling latest changes from GitHub...
git pull

echo.
echo [2/3] Adding all changes...
git add .

echo.
echo [3/3] Committing changes...
set mydate=%date:~0,10%
set mytime=%time:~0,8%
git commit -m "Auto Update: %mydate% %mytime%"

echo.
echo [4/4] Pushing to GitHub...
git push

echo.
echo ==========================================
echo Done! Your rulebook is now live.
echo ==========================================
pause
@echo off
echo Clearing npm cache...
npm cache clean --force

echo Removing node_modules and package-lock.json...
rmdir /s /q node_modules package-lock.json

echo Installing dependencies...
npm install

echo Installing webpack and cross-env globally...
npm install -g webpack webpack-cli cross-env

echo Adding path to node_modules/.bin...
set PATH=%CD%\node_modules\.bin;%PATH%

echo Reinstalling cross-env and webpack with update...
npm install cross-env@7 webpack@5 webpack-cli@4 --save-dev

echo Running build...
npm run build:app

echo Done!
pause
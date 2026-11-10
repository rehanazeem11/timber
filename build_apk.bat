@echo off
set "JAVA_HOME=C:\Program Files\Microsoft\jdk-21.0.12.101-hotspot"
set "ANDROID_SDK_ROOT=%LOCALAPPDATA%\Android\Sdk"
cd /d "%~dp0android"
call gradlew.bat assembleDebug
echo.
echo Build complete!
echo Copying APK to Desktop...
copy /Y "%~dp0android\app\build\outputs\apk\debug\app-debug.apk" "C:\Users\lenovo\Desktop\TimberBilling.apk" >nul
copy /Y "%~dp0android\app\build\outputs\apk\debug\app-debug.apk" "C:\Users\lenovo\Desktop\app-debug.apk" >nul
echo APK copied to Desktop: C:\Users\lenovo\Desktop\TimberBilling.apk


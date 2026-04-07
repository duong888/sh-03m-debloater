@echo off
title Debloat SH-03M by duong888
echo This script is only made for Sharp SH-03M model only.
echo.
echo ! SETUP YOUR PHONE AND ENABLE USB DEBUGGING BEFORE RUNNING THE SCRIPT !
echo.
echo Be sure to put this batch script inside your ADB folder along with
echo LeanLauncher.apk, Browser.apk, Aurora.apk, MoreLocale.apk and SetEdit.apk.
echo.
pause
cls
echo.
echo - Disabling non-crucial system apps...
adb shell pm disable-user jp.co.sharp.android.kids.kidshome
adb shell pm disable-user jp.co.sharp.android.iwnnime.ml
adb shell pm disable-user jp.co.sharp.android.kids.schedule
adb shell pm disable-user jp.co.sharp.android.kids.startupsetting
adb shell pm disable-user jp.co.sharp.android.kids.kidapp
adb shell pm disable-user jp.co.sharp.android.kids.startupwizard
adb shell pm disable-user jp.co.sharp.android.shlogdservice
adb shell pm disable-user jp.co.sharp.android.kids.KidsDurableLog
adb shell pm disable-user com.qualcomm.timeservice
adb shell pm disable-user com.quicinc.cne.CNEService
adb shell pm disable-user com.nttdocomo.android.osv
adb shell pm disable-user org.codeaurora.gallery
adb shell pm disable-user org.chromium.webview_shell
adb shell pm disable-user com.nttdocomo.android.areamail
adb shell pm disable-user jp.co.nttdocomo.lcsapp
adb shell pm disable-user jp.co.nttdocomo.lcsappsub
echo.
echo - Cleaning apps...
adb shell pm clear jp.co.sharp.android.kids.kidshome
adb shell pm clear jp.co.sharp.android.iwnnime.ml
adb shell pm clear jp.co.sharp.android.kids.schedule
adb shell pm clear jp.co.sharp.android.kids.startupsetting
adb shell pm clear jp.co.sharp.android.kids.kidapp
adb shell pm clear jp.co.sharp.android.kids.startupwizard
adb shell pm clear jp.co.sharp.android.shlogdservice
adb shell pm clear jp.co.sharp.android.kids.KidsDurableLog
adb shell pm clear com.qualcomm.timeservice
adb shell pm clear com.quicinc.cne.CNEService
adb shell pm clear com.nttdocomo.android.osv
adb shell pm clear org.codeaurora.gallery
adb shell pm clear org.chromium.webview_shell
adb shell pm clear com.nttdocomo.android.areamail
adb shell pm clear jp.co.nttdocomo.lcsapp
adb shell pm clear jp.co.nttdocomo.lcsappsub
adb shell pm trim-caches 1000000000
echo.
echo - Installing Lean Launcher...
adb install LeanLauncher.apk
adb shell cmd package set-home-activity "com.hdeva.launcher/com.google.android.apps.nexuslauncher.NexusLauncherActivity"
echo.
echo - Installing your chosen browser...
adb install Browser.apk
echo.
echo - Installing Aurora Store...
adb install Aurora.apk
echo.
echo - Installing MoreLocale...
adb install MoreLocale.apk
adb shell pm grant jp.co.c_lis.ccl.morelocale android.permission.CHANGE_CONFIGURATION
echo.
echo - Installing SetEdit...
adb install SetEdit.apk
adb shell pm grant io.github.muntashirakon.setedit android.permission.WRITE_SECURE_SETTINGS
echo.
echo - Change display dimensity and text size...
adb shell wm density 190
adb shell settings put system font_scale 0.9
echo.
echo - Set Dark mode...
adb shell settings put secure ui_night_mode 2
adb shell "cmd uimode night yes"
echo.
echo - Set time to 24Hrs and disable Auto Time-zone...
adb shell settings put global auto_time_zone 0
adb shell settings put system time_12_24 24
echo.
echo - Rebooting your device to applies all settings...
adb reboot
echo.
echo + Done, to change your language, launch MoreLocale2.
echo.
echo + Beware that doing so will mess up 36%% of features and apps pre-installed 
echo (that includes Dialer app, set wallpaper, and Adult Settings applets). 
echo.
echo + You've been warned.
echo.
pause

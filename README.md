# Debloat SH-03M

A Windows batch script to debloat and set up the **Sharp SH-03M** (NTT Docomo) Android phone via ADB.

> ⚠️ **This script is designed for the Sharp SH-03M. Not recommended for using on other devices.**

---

## What It Does

1. **Disable & clear bloatware** — Kids mode apps, Sharp/Docomo system services and carrier apps are disabled and wiped data.
2. **Install replacement apps** — Lean Launcher, a browser of your choice, Aurora Store, MoreLocale 2, and SetEdit are sideloaded and granted necessary permissions.
3. **Set Lean Launcher as the default home screen.**
4. **Adjusts display settings** — Sets display density to 190 DPI and font scale to 0.9.
5. **Enable Dark Mode.**
6. **Set 24-hour time format** and disables automatic timezone.
7. **Reboot the device.**

---

## Requirements

- A Windows PC with **ADB** installed and working
- **Sharp SH-03M** running stock firmware
- USB Debugging enabled on the phone (Settings → Developer Options → USB Debugging)
- The following files placed in the same folder as the script and your ADB executable **(be sure to rename the downloaded files perspectively)**:
  - `runme.bat` (this script)
  - `LeanLauncher.apk` — [Download](https://github.com/hundeva/Lean-Launcher/releases)
  - `Browser.apk` — your browser of choice
  - `Aurora.apk` — [Download](https://auroraoss.com/downloads/AuroraStore/Latest/latest.apk)
  - `MoreLocale.apk` — [Download](https://github.com/c-lis/morelocale/releases/)
  - `SetEdit.apk` — [Download](https://github.com/MuntashirAkon/SetEdit/releases/)

---

## Usage

1. Set up your phone and enable USB Debugging from the Adult Settings (in case you forgot, the default password is 0000).
2. Connect the phone to your PC via USB and authorize the ADB connection when prompted on the device.
3. Place the script and all required APKs inside your ADB folder.
4. Double-click `runme.bat` and follow the on-screen prompts.
5. The device will reboot automatically when done.
6. After reboot, **open MoreLocale 2** to change the system language.

---

## ⚠️ Warnings

- Changing the language via MoreLocale 2 will break approximately **36% of pre-installed features and apps**, including the Dialer app, wallpaper settings, and Adult Settings applets. This is a known limitation.
- Disabling system packages is reversible using "adb pm enable" command.

---

## Credits

Script by **duong888**.
README.md by **Claude.ai**.

# Debloat SH-03M

A Windows batch script to debloat and set up the **Sharp SH-03M** (NTT Docomo) Android phone via ADB.

> ⚠️ **This script is designed for the Sharp SH-03M. Not recommended for using on other devices.**

---

## ❓ What It Does

1. **Disable & clear bloatware** — Kids mode apps, Sharp/Docomo system services and carrier apps are disabled and wiped data.
2. **Install replacement apps** — Lean Launcher, a browser of your choice, Aurora Store, MoreLocale 2, and SetEdit are sideloaded and granted necessary permissions.
3. **Set Lean Launcher as the default home screen.**
4. **Adjusts display settings** — Sets display density to 190 DPI and font scale to 0.9.
5. **Enable Dark Mode.**
6. **Set 24-hour time format** and disables automatic timezone.
7. **Reboot the device.**

---

## 📁 Requirements

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

## 🛠️ How to use

1. Set up your phone and enable USB Debugging from the Adult Settings (hadn't done it yet? **scroll down**).
2. Connect the phone to your PC via USB and authorize the ADB connection when prompted on the device.
3. Place the script and all required APKs inside your ADB folder.
4. Double-click `runme.bat` and follow the on-screen prompts.
5. The device will reboot automatically when done.
6. Enjoy your fully debloated cutie-pie with all the stuff you need.

---

## 🔧 Setup and enable USB Debugging

This part is made for anyone who doesn't know anything about Japanese, but somehow got this phone on hand (like me).

1. At first startup, if it asks something about **SIM情報設定**, tap **スキップ**.
2. A pop-up with title **確認** should appeared, tap **はい**. It should kick you to the home screen.
3. At the home screen, look for an app named **ほごしゃメニュー** with "a user next to a gear" icon.
* If it asks for password, type **0000** and tap **確認**.
4. Scroll down to the bottom of the selection, find and tap **システム**.
5. Look for an option named **端末情報** and tap on it.
6. Find **ビルド番号** and tap 7 times to enable Developer mode.
7. After a toast appeared without any countdown, press Back and tap **開発者オプション**.
8. **Scroll down slowly at that section**, then tap on **USBデバッグ** once you see it. (if it asks for confirmation, tap "OK")
9. At this point, you've completed the Setup, now **scroll up** to finish the rest.

---

## ❤️‍🩹 Recovery

**SPOILER ALERT:** There's not much fun stuff at this screen btw.

Say, you still have USB Debugging enabled after all of that, follow this:

1. Connect to your PC, run **"adb reboot bootloader"** while the phone is still running.
2. At Download Mode screen, **hold down your Power button** for 10s (or 'til the device shut off).
3. **Hold down your power button to boot up**, wait till the lock screen show up.
4. After that, run **"adb reboot recovery"** to get into the Recovery menu.

---

## ⚠️ Warnings

- Changing the language will break approximately **36% of pre-installed apps and features**, including the Dialer app, wallpaper settings, and Adult Settings applets. **This is a known limitation**.
- Disabling system packages is reversible using **"adb pm enable"** command.

---

## 🙏 Credits

Scripting, testing by **myself**, duh.
README.md by **Claude.ai**.
Device by someone from **Facebook Marketplace**.

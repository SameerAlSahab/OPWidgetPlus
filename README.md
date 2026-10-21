<h1 align="center">OPWidgetPlus</h1>

<p align="center">
  The OnePlus clock &amp; weather widgets, ported to <b>every Android launcher</b> (Android 6.0+),<br>
  with the real red "1", custom fonts, neon Cyberpunk glow and no OnePlus Weather dependency.
</p>

[![GitHub All Releases Downloads](https://img.shields.io/github/downloads/SameerAlSahab/OPWidgetPlus/total?style=for-the-badge&color=2ea44f)](https://github.com/SameerAlSahab/OPWidgetPlus/releases)

<p align="center">
  <a href="https://github.com/SameerAlSahab/OPWidgetPlus/stargazers"><img src="https://img.shields.io/github/stars/SameerAlSahab/OPWidgetPlus?style=for-the-badge&logo=github&color=eb0028" alt="Stars"></a>
  <a href="https://github.com/SameerAlSahab/OPWidgetPlus/network/members"><img src="https://img.shields.io/github/forks/SameerAlSahab/OPWidgetPlus?style=for-the-badge&logo=github" alt="Forks"></a>
  <a href="https://github.com/SameerAlSahab/OPWidgetPlus/releases"><img src="https://img.shields.io/github/v/release/SameerAlSahab/OPWidgetPlus?style=for-the-badge&include_prereleases" alt="Release"></a>
  <a href="https://github.com/SameerAlSahab/OPWidgetPlus/releases"><img src="https://img.shields.io/github/downloads/SameerAlSahab/OPWidgetPlus/total?style=for-the-badge&color=2ea44f" alt="Downloads"></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/SameerAlSahab/OPWidgetPlus?style=for-the-badge" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/Android-6.0%2B-3ddc84?style=for-the-badge&logo=android&logoColor=white" alt="Android 6.0+">
  <a href="https://t.me/apcports2"><img src="https://img.shields.io/badge/Telegram-@apcports2-26A5E4?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram"></a>
  <a href="https://github.com/SameerAlSahab/OPWidgetPlus/issues"><img src="https://img.shields.io/github/issues/SameerAlSahab/OPWidgetPlus?style=for-the-badge" alt="Issues"></a>
  <img src="https://img.shields.io/github/last-commit/SameerAlSahab/OPWidgetPlus?style=for-the-badge" alt="Last commit">
</p>

<p align="center">
  <img src="readme-res/1.jpg" width="30%" alt="Screenshot 1">
  <img src="readme-res/2.jpg" width="30%" alt="Screenshot 2">
  <img src="readme-res/3.jpg" width="30%" alt="Screenshot 3">
  <img src="readme-res/4.jpg" width="30%" alt="Screenshot 4">
  <img src="readme-res/5.jpg" width="30%" alt="Screenshot 5">
  <img src="readme-res/6.jpg" width="30%" alt="Screenshot 6">
</p>

## Features

- **Works in any launcher** - Pixel, Samsung, Xiaomi, Nova, Lawnchair and more. The widget is drawn as an image, so no OnePlus launcher classes are needed.
- **Android 6.0+** (minSdk 23).
- **Real OnePlus red "1"** in the clock hour and the temperature.
- **Three widgets**: Clock, Weather, and Weather &amp; Clock.
- **Fonts you can choose**: OPlus Sans Black, OPlus Sans Light, O Sans Regular.
- **Styles**: Classic, Cyberpunk (yellow + cyan glow), Neon Cyan, Neon Purple, Neon Green.
- **Cyberpunk RGB animation** - a smooth 5 second colour flow after you unlock (can be turned off).
- **"Never Settle" text** - show or hide it, red by default.
- **Always red hour digit** (optional) - turns the last hour digit red (01, 02, 03 ... 12) instead of only the 1.
- **Built-in weather** - no OnePlus Weather app and no API key. Pick your city in the app. Data comes from [Open-Meteo](https://open-meteo.com), with °C / °F.

## Install

1. Download the latest APK from [Releases](https://github.com/SameerAlSahab/OPWidgetPlus/releases).
2. Install it and open **OPlus_Widgets Settings**.
3. Search for your city under **Weather area** and pick it.
4. Long-press your home screen, open **Widgets**, and add *OnePlus Clock*, *OnePlus Weather* or *OnePlus Weather &amp; Clock*.

## Settings

| Option | What it does |
|---|---|
| Always red hour digit | Off: only a 1 is red (stock OnePlus). On: the last hour digit is always red. |
| Widget font | Choose between the three bundled fonts. |
| Style | Classic or one of the glowing neon styles. |
| RGB animation | Colour flow after unlock, for the glowing styles. |
| Show "Never Settle" | Shows the slogan when there is no weather line. |
| "Never Settle" in red | Red slogan (default) or follow the style colour. |
| Weather area / °F | City search and temperature unit. |

## How it works

The original OnePlus widget uses custom views and font resources that only the OnePlus launcher can load. OPWidgetPlus replaces that with a small renderer that draws the text into a bitmap with your chosen font, then shows it in a plain `ImageView`. An alarm refreshes it every minute, and weather is refreshed every 30 minutes.

Ported from the OnePlus Widget APK (`net.oneplus.widget` 15.0.0) with [AppsPorter](https://github.com/SameerAlSahab/AppsPorter).

## Credits

- **[Sameer Al Sahab](https://github.com/SameerAlSahab)** - port, renderer, settings app, [AppsPorter](https://github.com/SameerAlSahab/AppsPorter)
- **OnePlus** - original widgets, OPlus Sans font and the Cyberpunk theme colours
- **[Open-Meteo](https://open-meteo.com)** - free open-source weather API
- Telegram channel: [@apcports2](https://t.me/apcports2)

## Disclaimer

This is an unofficial community project and is not affiliated with or endorsed by OnePlus. OnePlus names, widget designs and fonts belong to their owners.

## License

Released under the [MIT License](LICENSE).# OPWidgetPlus
OnePlus OG Widget with tons of mods for any Android device 6.0++

<h1 align="center">yt-dlp Batch Downloader</h1>

<p align="center"><b>A tiny Windows menu around yt-dlp for downloading videos one URL at a time</b></p>

<p align="center">
  ![Batch](https://img.shields.io/badge/Batch-script-4D4D4D)
  ![Platform](https://img.shields.io/badge/platform-Windows-0078D6?logo=windows&logoColor=white)
  ![Updated](https://img.shields.io/badge/updated-2025-09-30-success)
  [![Releases](https://img.shields.io/badge/downloads-Releases-blue)](https://github.com/alisadhk/yt-dlp-batch-downloader/releases/latest)
</p>

---

## Overview
A Windows batch script that asks for a download folder and then repeatedly asks for video URLs and downloads each one with yt-dlp using the best available format and an optional cookies file.

## Features
- Choose Desktop or a custom folder
- Loop: paste a URL, download, repeat
- Uses a cookies file for sites that require login
- Clear success / error message after every download

## Screenshots
<p align="center"><img src="screenshots/screenshot-1.png" alt="yt-dlp Batch Downloader screenshot" width="720"></p>

## Download and install
### Option A - Download
No prebuilt binary is published for this project. Use Option B below.

### Option B - Run the script
Download the script from this repository and run it as described in **How to use**.

## How to use
1. Download **yt-dlp.exe** from https://github.com/yt-dlp/yt-dlp/releases and save it as C:\yt-dlp.exe (or edit the YTDLP line in the script).
2. Optional: export your own browser cookies to C:\cookies.txt (or edit the COOKIES line).
3. Run download_enarsi.bat, choose the download path, then paste a video URL.
4. Leave the URL empty to exit.

## Configuration and privacy
- No cookies, tokens or accounts are included; create your own cookies file locally and never commit it.



## Notes
- Download only content you have the right to save, and follow the terms of the website.

---

<p align="center">Maintained by <a href="https://github.com/alisadhk">@alisadhk</a> - last update 2025-09-30</p>
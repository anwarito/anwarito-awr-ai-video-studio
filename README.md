# AWR AI VIDEO STUDIO

Private, free, ad-free video editor for Android 10+ (API 29). English interface. No account, no cloud, no watermark.

## Status (read this first)
* The source code is complete but has NOT been compiled or run yet. The environment it was written in had no Android SDK and no internet to download one, so no APK exists and nothing has been tested on a device. Expect to fix a few compile errors on the first build.
* Two dependency coordinates could not be verified offline: `com.alphacephei:vosk-android:0.3.47` and the Media3 1.4.1 effect APIs used in `Exporter.kt`.

## What works on the phone (no network)
Clip import, trimming, reordering, 9:16 / 1:1 / 16:9 canvas, cinematic filters, fades, photo zoom/pan, Arabic voice-over (Android's own TTS voice), script-to-subtitle timing, burned-in subtitles, music with beat-synced cuts, MP4 export (H.264/AAC, 720p-class, no watermark), projects saved in private app storage, save to gallery.

## Experimental
Speech-to-subtitles with a Vosk model you import (Settings). Accuracy varies; big Arabic models can exhaust 4 GB phones.

## Not possible on a phone (the app says so, nothing is faked)
AI image generation, text-to-video and image-to-video (Wan 2.2, LTX). Wan2.2 5B asks for 24 GB VRAM, LTX 2.3 for 16 GB. Free alternative: ComfyUI on a computer you own, linked in Settings. Optional; the app never touches the network otherwise.

## External dependencies (all free and open source)
Jetpack Compose, AndroidX Media3 (Apache-2.0, video editing/export), Guava, Kotlin coroutines, Vosk (Apache-2.0, optional speech model downloaded by you from alphacephei.com/vosk/models). Optional: ComfyUI on your own PC.

## Build the APK
**Android Studio (any computer):** open this folder, wait for sync, Build > Build APK(s). Output: `app/build/outputs/apk/debug/app-debug.apk`.

**Command line (Linux/macOS, Java 17):** `./build-apk.sh`

**GitHub (free):** push this folder to a repository; the workflow in `.github/workflows/build-apk.yml` builds the APK and attaches it to the run under Artifacts.

## Install on your phone
1. Copy `app-debug.apk` to the phone and tap it.
2. Allow "Install unknown apps" for the app you opened it from when asked.
3. Open AWR AI VIDEO STUDIO. Open "What runs here?" to see what your phone can do.

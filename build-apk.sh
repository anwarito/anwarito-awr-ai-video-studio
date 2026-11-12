#!/usr/bin/env bash
# Builds app-debug.apk on any Linux machine or GitHub Codespace. Needs Java 17+ and internet. NOT yet tested by the author.
set -euo pipefail
SDK="${ANDROID_HOME:-$HOME/android-sdk}"
mkdir -p "$SDK/cmdline-tools"
if [ ! -x "$SDK/cmdline-tools/latest/bin/sdkmanager" ]; then
  cd "$(mktemp -d)"
  curl -fsSL -o t.zip https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
  unzip -q t.zip
  rm -rf "$SDK/cmdline-tools/latest"; mv cmdline-tools "$SDK/cmdline-tools/latest"
  cd - >/dev/null
fi
export ANDROID_HOME="$SDK"
yes | "$SDK/cmdline-tools/latest/bin/sdkmanager" --licenses >/dev/null || true
"$SDK/cmdline-tools/latest/bin/sdkmanager" "platform-tools" "platforms;android-34" "build-tools;34.0.0"
echo "sdk.dir=$SDK" > local.properties
./gradlew assembleDebug --no-daemon
echo; echo "APK: $(pwd)/app/build/outputs/apk/debug/app-debug.apk"

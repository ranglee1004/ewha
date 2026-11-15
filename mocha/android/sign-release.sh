#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
: "${ANDROID_HOME:?Set ANDROID_HOME to your Android SDK directory}"
: "${MOCHA_KEYSTORE:?Set MOCHA_KEYSTORE to your private .jks file}"
: "${MOCHA_PASSWORD_FILE:?Set MOCHA_PASSWORD_FILE to your private password file}"
BUILD_TOOLS="${MOCHA_BUILD_TOOLS:-35.0.0}"
OUTPUT="${MOCHA_APK_PATH:-../../apk/이차저차_Fawvi_release.apk}"
./gradlew assembleRelease
mkdir -p "$(dirname "$OUTPUT")"
"$ANDROID_HOME/build-tools/$BUILD_TOOLS/zipalign" -f -p 4 app/build/outputs/apk/release/app-release-unsigned.apk app/build/outputs/apk/release/app-release-aligned.apk
"$ANDROID_HOME/build-tools/$BUILD_TOOLS/apksigner" sign --ks "$MOCHA_KEYSTORE" --ks-key-alias mocha-release --ks-pass "file:$MOCHA_PASSWORD_FILE" --out "$OUTPUT" app/build/outputs/apk/release/app-release-aligned.apk
"$ANDROID_HOME/build-tools/$BUILD_TOOLS/apksigner" verify --verbose --print-certs "$OUTPUT"
"$ANDROID_HOME/build-tools/$BUILD_TOOLS/zipalign" -c -v 4 "$OUTPUT"

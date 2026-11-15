# 모카와 동승 Android 시제품

웹 UI를 로컬 WebView로 실행하는 Kotlin Android 프로젝트입니다. 실제 Pleos SDK 연결은 아직 없습니다.

## 개발 실행
Android Studio에서 이 폴더를 열고 Android SDK 35를 설치한 뒤 Gradle 동기화 후 Run으로 실행합니다. Gradle 8.9, Android Gradle Plugin 8.7.3, Kotlin 2.0.21, Java 바이트코드 17을 사용합니다.

## release 빌드 및 서명
`./gradlew assembleRelease`만 실행하면 **서명되지 않은** APK가 생성됩니다.
Android Studio의 Build → Generate Signed Bundle / APK에서 APK와 release를 선택하여 개인 키로 서명하거나 아래 스크립트를 사용하세요.

```bash
export ANDROID_HOME="/your/android-sdk"
export MOCHA_KEYSTORE="/private/mocha-release.jks"
export MOCHA_PASSWORD_FILE="/private/password.txt"
bash sign-release.sh
```

서명 키 별칭은 `mocha-release`입니다. 키 파일과 비밀번호는 저장소에 올리지 마세요. APK 파일명에서 Ewha는 임시 팀명입니다.

## 설치
```bash
adb install -r ../../apk/Ewha_모카와동승_release.apk
adb shell am start -n kr.ewha.mocha/.MainActivity
```
이전 설치본의 서명 키가 다르면 설치가 실패할 수 있습니다. 기존 앱 삭제 시 프로필과 기록도 삭제되므로 필요한 기록을 먼저 보관하세요.

Pleos 설치·실행 검증 상태는 저장소 루트 README와 apk/VALIDATION.md를 확인하세요.

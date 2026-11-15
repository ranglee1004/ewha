# ewha

## 모카와 동승
반려동물과의 출발 준비부터 이동 중 관찰, 병원 방문 후 회복 귀가와 돌봄 기록까지 이어주는 차량용 펫 동승 시제품입니다.

## APK 다운로드
[서명된 release APK](apk/Ewha_모카와동승_release.apk)

- 경로: `apk/Ewha_모카와동승_release.apk`
- 버전: 0.1 (versionCode 1), 앱 ID: `kr.ewha.mocha`
- Ewha는 임시 팀명입니다. 공모전 최종 팀명으로 파일명을 변경해 주세요.

## 실행 방법
Pleos Connect Emulator를 켠 뒤 Android SDK platform-tools의 adb로 설치합니다.

```bash
adb install -r apk/Ewha_모카와동승_release.apk
adb shell am start -n kr.ewha.mocha/.MainActivity
```

Android Studio에서 `mocha/android` 폴더를 열어 소스 빌드도 가능합니다. Android SDK 35, Gradle 8.9, JDK 17 이상이 필요합니다. [빌드·서명 방법](mocha/android/README.md)

## 테스트 환경 및 필요한 설정
- 실제 빌드 환경: Linux x86_64, OpenJDK 21.0.13, Android Gradle Plugin 8.7.3, Kotlin 2.0.21.
- compileSdk 35 / targetSdk 34 / minSdk 28, Java target 17.
- release 빌드·필수 lint·APK 서명·정렬·패키지 무결성 검증 통과.
- 앱 화면은 가로 방향이며 별도 서버·로그인이 필요 없습니다. 기록과 프로필은 WebView 내부 localStorage에 저장됩니다.
- **Pleos Connect 에뮬레이터 버전: 미검증 — 제출 전 실제 실행 버전 기재 필요.**
- **Pleos 화면 규격: 미검증 — 제출 전 실제 실행 해상도 기재 필요.**
- 실제 기기 실행 및 WebView 음성·클립보드 기능은 미검증입니다.
- [검증 결과와 실행 체크리스트](apk/VALIDATION.md)

## 구현 범위와 모의 기능
여행 케어, 출발 체크, 관찰 이벤트, 정차 후 돌봄, 이동 요약, 병원 상담 요약, 회복 귀가, 프로필·건강 기록 화면을 제공합니다.
현재 Kotlin 앱은 HTML/CSS/JavaScript 화면을 로컬 WebView로 실행합니다. 실제 Pleos Vehicle/HVAC/TTS/STT/NaviHelper SDK, 카메라 및 외부 장치 연동은 구현되지 않았습니다. 차량 상태·경로·병원 정보·관찰 이벤트는 시연용 모의 데이터이며, 음성 기록은 예시 입력입니다. 질병·멀미 진단 기능이 아닙니다.

## 소스 코드
- `mocha/android/`: Android Kotlin 프로젝트 및 화면 assets
- `mocha/web/`: 같은 화면의 웹 소스
- `apk/`: 서명된 release APK와 검증 기록

서명 키와 비밀번호는 저장소에 포함하지 않습니다.

# Release APK 검증 결과

- 빌드: 2026-11-15, Linux x86_64, OpenJDK 21.0.13
- Gradle 8.9 / Android Gradle Plugin 8.7.3 / Kotlin 2.0.21
- compileSdk 35 / targetSdk 34 / minSdk 28, Java target 17
- assembleRelease 성공, lintVitalRelease 통과
- Android Build Tools 35.0.0 apksigner 검증 성공 (v3), zipalign 검증 성공
- Manifest debuggable 플래그 없음 (release)
- ZIP 무결성 및 assets 4개 파일의 최신 소스 일치 확인
- JavaScript 문법 검사 통과
- 크기: 2106854 bytes
- SHA-256: `630a30034048084c3682cc692e51c77cacd3bfbe25622363a28e6c39155b7879`

## 미검증
Pleos Connect Emulator 설치·실행, 실제 기기 설치·실행, WebView 음성 재생과 클립보드 동작은 이 환경에서 검증하지 못했습니다. 위 검사는 실제 기기 실행 성공을 보증하지 않습니다.

## 제출 전 실행 확인
1. Pleos 에뮬레이터를 실행하고 adb install로 이 APK를 설치합니다.
2. 홈 → 체크리스트 → 주행 → 상태 기록 → 정차 돌봄 → 리포트 흐름을 확인합니다.
3. 병원 가는 길 → 상담 요약 → 회복 귀가 시작을 확인합니다.
4. 프로필·건강 기록을 저장하고 앱 재실행 후 유지되는지 확인합니다.
5. 사용한 Pleos 에뮬레이터 버전과 화면 해상도를 루트 README에 기재합니다.

팀명: 이차저차 / 앱명: 포우메이트 · PawMate. 기존 서명 키와 applicationId를 유지합니다.

- 앱 표시명 PawMate, versionName 0.1.1 / versionCode 2로 재빌드 및 같은 키 서명 검증 완료.

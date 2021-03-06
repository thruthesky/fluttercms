# 플러터 + 파이어베이스 CMS

* 명칭: Flutter CMS
* 라이센스: GPL 3.0
* 개발자: 송재호 thruthesky@gmail.com
* 버전: 0.1.0

//// 여기서부터: korea_flutter_community 에서 소셜 로그인을 할 수 있도록, 해시키 등록, 앱 등록을 하고,
배포를 한다.

## 개요

* 모든 앱에서 회원 가입 및 회원 정보 관리, 그리고 게시판 기능이 필요합니다. 이를 CMS(Content Management System)이라고 하는데,
* 본 프로젝트에서는  [Flutterbase](https://github.com/thruthesky/flutterbase) 라이브러리를 사용하여  파이어베이스를 기반으로 하는 간단한 CMS 예제 앱입니다.
* 소스 코드를 쉽게 복사해서 쓸 수 있도록 하는 것이 본 프로젝트의 목표입니다.
* 또한 게시판 기능을 확장하여 블로그나 쇼핑몰 등 다양하게 활용 할 수도 있습니다.

### 유료 서비스 안내

* 본 프로젝트는 GPL 을 따르는 오픈 소스입니다. 하지만 사용함에 있어 어려운 경우 유료 서비스를 요청 하실 수도 있습니다.
  * 설치가 어려운 경우
    * Firebase 설정 및 앱 설정을 해 드립니다.
  * 추가 기능이 필요한 경우
    * Flutter CMS 가 가진 기본 기능 외에 추가 기능이 필요 한 경우 개발을 해 드립니다.
* 연락처: thruthesky@gmail.com

## 참여

* 본 프로젝트는 '한국 플러터 커뮤니티'에서 스터디용 제작한 것입니다.
* [소통하며 배우는 플러터 스터디 그룹 - 카카오톡 단톡방 입장](https://open.kakao.com/o/g20m41Mb)
* [네이버 카페 공지사항 참고](https://cafe.naver.com/ionic2/1869)
* 소스를 수정하시고 PR 을 해 주시면 됩니다.
* UI 작업 및 문서화 작업하실 분을 구합니다.
* 연락처: thruthesky@gmail.com

## 설치

* 사실, 설치라기 보다는 `활용하는 방법`에 대한 설명이라고 볼 수 있습니다.
  * 궁극적으로 `Flutterbase` 모듈에 대한 이해를 잘 해서 복사하여 사용 할 수 있도록 하는것이 목표입니다.


* 크게 두가지 방법이 있는데,
  * 첫째, 이미 만들어져 있는 Flutter 앱에 `Flutterbase` 모듈을 추가하는 방법과
  * 둘째, 본 프로젝트를 복사해서 사용하는 법이 있습니다.


* 여기서는 본 프로젝트를 복사하여 설정만 바꾸어서 사용하는 방법에 대해서 설명을 합니다.
  * 이미 만들어진 앱에 `Flutterbase` 모듈만 추가하는 방법은 [Flutterbase](https://github.com/thruthesky/flutterbase) 문서를 참고해주세요.

### 소스 다운로드

* https://github.com/thruthesky/fluttercms 를 clone 합니다.
  * Pull Request를 할 계획이면 fork 후 clone 으로 하고, root 로 https://github.com/thruthesky/fluttercms 를 추가합니다.
  * 참고로 PR 을 하지 않을 계획이면 굳이 fork 하지 않고 바로 clone 하면 됩니다.
  * 그리고 굳이 clone 할 필요없이 소스를 다운로드 해서 사용하셔도 됩니다. 하지만, submodule 도 있기 때문에 clone 을 추천드립니다.

* Git submodule 을 초기화 합니다.
  * `git submodule update --init`
  * `git submodule foreach git checkout master`

* 그리고 `basic` branch 를 체크아웃합니다.
  * `git checkout basic`
  * `basic` branch 에는 가장 간단한 코드들이 들어가 있으므로 재 활용하기가 편할 것입니다.
  * 본 문서에서 설명은 `basic` branch 를 바탕으로 설명을 합니다.
  * `basic` branch 에서 필요한 소스 코드만 복사해서 사용하셔도 됩니다.

* 경로 변경
  * ~~몇 몇 소스코드에 relative path 에 문제가 있을 수 있습니다.~~
  * ~~`import package:fluttercms` 와 같이 되어져 있다면 이를 `import package:[project_name]` 으로 변경을 합니다. (소스 파일들을 검색을 해 볼 필요가 있습니다.)~~
    * ~~특히, `lib/models/app.model.dart` 에서 `../flutterbase/etc/flutterbase.globals.dart` 와 같이 relative path 로 지정하면 에러가 나는데, 확인을 해 볼 필요가 있습니다.~~

* `master` branch 는 launch.json 에 따라 여러 main.dart 로 분리되어져 있으니, `basic` branch 보다 약간 더 복잡 할 수 있습니다.

### Firebase 설정

* Firebase 를 기반으로 동작하므로, Firebase 설정이 필요합니다.

* [Flutterbase Firebase 설정](https://github.com/thruthesky/flutterbase#firebase-%EC%84%A4%EC%A0%95)에서 설명된데로 하면 됩니다.


### 프로젝트 설정

* [Flutterbase settings.dart 설정](https://github.com/thruthesky/flutterbase#%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%84%A4%EC%A0%95) 을 참고해서 settings.dart 파일을 수정한다.



### iOS 설치 예제

* 먼저 ios/Runner/GoogleService-Info.plist 파일을 삭제합니다.
* Xcode 에서 Runner > Identity 에서 Bundle ID 를 기록합니다.
* 파이어프로젝트에서 iOS 앱을 추가하고, Bundle ID 를 동일하게 기록합니다.
* GoogleService-Info.plist 를 다운로드해서
  * ios/Runner/ 폴더에 저장한 다음,
  * Xcode 의 Runner > Runner 아래로 드래그해서 넣습니다.
* pod 설치를 합니다.
  * cd ios
  * pod install

* Firebase Auth - Google Sign 하기 위해서는
  * Firebase Sign-in Method 에서 Google Enable 합니다.
  * REVERSE_CLIENT_ID 와 Bundle ID 를 Xcode 에 등록합니다.

* Firebase Auth - Facebook Sign 을 하기 위해서는
  * Facebook 개발자 페이지에서 앱을 생성하고 Login 설정을 합니다.
  * Firebase Sing-in Method 에서 Facebook 을 Enable 합니다.
  * `settings.dart` 에 Facebook App ID 와 Return URL 을 기록합니다.

* 앱을 실행합니다.

### Android 설치 예제

* android/app/google-services.json 을 삭제합니다.
* 아래와 Android 앱 기본 설정을 합니다.
  * 아래의 세 파일에서 package 를 App ID 로 변경
    * android/app/src/main/AndroidManifest.xml
    * android/app/src/debug/AndroidManifest.xml
    * android/app/src/profile/AndroidManifest.xml
  * android/app/build.gradle 에서 ApplicationId 를 App ID 로 변경
  * android/app/src/main/kotlin/….MainActivity.kt 에서 package 를 App ID 로 변경
  * android/app/build.gradle 에서 minSdkVersion 16 을 minSdkVersion 21 로 변경

* Firebase console 에서 Android 앱을 추가하고, google-services.json 을 다운 받아
  * android/app/google-services.json 에 저장합니다.

* Flutter 에서 google-services.json 을 읽을 수 있도록 Google Services Gradle plugin 을 설치
  * android/app/build.gradle 파일을 열어서 맨 아래에 아래를 추
    * `apply plugin: 'com.google.gms.google-services'`
  * android/build.gradle 에서 buildscript tag 에 아래의 dependency 를 추가

```
buildscript {
   repositories {
       // ...
   }

   dependencies {
       // ...
       classpath 'com.google.gms:google-services:4.3.3'   // 추가
   }
}
```

* Firebase Auth - Google Sign 을 하기 위해서는 SHA1 fingerprint 를 등록합니다.

* Firebase Auth - Facebook Sign 을 하기 위해서는
  * Facebook 개발자 페이지에서 앱을 생성하고 Login 설정을 합니다.
  * Firebase Sing-in Method 에서 Facebook 을 Enable 합니다.
  * `settings.dart` 에 Facebook App ID 와 Return URL 을 기록합니다.



### iOS 와 Android 설정을 마친 후

* 관리자로 사용할 이메일로 가입을 합니다.
* 관리자 설정: [Flutterbase 관리자 지정](https://github.com/thruthesky/flutterbase#%EA%B4%80%EB%A6%AC%EC%9E%90-%EC%84%A4%EC%A0%95e)에서 설명된 데로 합니다.
* 카테고리에
  * discussion 과 qna 두개를 만듭니다.
  * discussion 카테고리에 글 쓰기를 합니다.
  * 코멘트 글 쓰기를 합니다.
  * 사진 업로드를 합니다.

* 로그아웃을 하고, 테스트 아이디로
  * 회원 가입을 하고
  * 회원 정보 수정하고
  * 회원 사진 업로드를 합니다.



## 구성

* 플러터와 파이어베이스의 연결을 관리하는 모듈 - [Flutterbase](https://github.com/thruthesky/flutterbase)
* Flutterbase 를 기반으로 만든 Flutter 예제 앱 - [FlutterCMS](https://github.com/thruthesky/fluttercms)
* 파이어베이스 `Firestore` 권한 검사 테스트 프로젝트 - [Flutterbase Security Test](https://github.com/thruthesky/flutterbase-security-test) 

## 테스트

* Flutterbase 참고



## Multi App (master 브랜치) 사용 설명


* `master` 브랜치에는 멀티앱으로 이것 저것 많은 기능이 포함되어져 있습니다.
  * Multi App 은 앱의 코드나 기능이 완전히 동일한 경우, 앱의 껍데기(UI 디자인)만 바꾸어서 앱 배포(출시)하는 경우, 유용하게 사용 할 수 있습니다.
  * .vscode/launch.json 에 설정을 통해서 여러 `min.dart`로 분리해서 각 앱 마다 UI 를 변경해 가면서 테스트를 했습니다.
* 그래서 각 앱마다 `main.dart` 가 다르고, `pubspec.yaml` 도 다릅니다.
  * 또한 Kakaotalk 로그인이나 Naver 로그인 기능이 있어서, 이것 저것 많은 설정을 해야 합니다.
  * 그래서 회원관리 + 게시판 기능만 복사해서 쓰고자 한다면 `basic` branch 의 소스를 보시기 바랍니다.
* launch.json 에서 `Flutter` 를 실행하면 기본 앱이 실행되지만,
  * pubspec.yaml 이나 Info.plist 등은 기본 파일의 것이 아닐 수 있습니다.
  * 이 때, 각 앱 설정에 맞는 모든 변경을 다 해 주어야 합니다.

* 간단하게 앱 설정을 변경하기 위해서 패치 프로그램을 만들었습니다.
  * [Flapp](https://www.npmjs.com/package/flapp) 노드 프로그램을 참고합니다.

* 특히 Multi App 을 사용하는 경우,
  * Firebase 프로젝트를 따로 할 필요 없이 하나로 할 수 있습니다.
    * 앱 마다 게시판을 다르게 설정 할 수 있으며,
    * 앱 마다 커스터마이징을 해서 껍데기만 바꿀 수 있습니다.


## Push Notification

* `settings.dart` 에 topic 을 수정합니다.
* 파이어베이스 콘솔에서 보는 방법
  * title, body 에는 제목과 내용을 입력하면 됩니다.
  * target => topic 에 `settigns.dart` 에 지정한 topic 으로 입력합니다.
  * Scheduling 에는 Now 를 입력합니다.
  * Additional options 에는
    * click_action: FLUTTER_NOTIFICATION_CLICK 을 입력합니다.
    * tpye: snackbar 또는 dialog 둘 중 하나를 입력합니다.
      * snackbar 는 시간이 지나면 자동으로 사라지만,
      * dialog 는 사용자가 반드시 확인 버튼을 눌러야합니다.
      * postId: 글 ID 를 입력합니다.




## Git Repo 관련

* `key.properties` 파일은 .gitignore 에 등록되어 repo 에 저장되지 않는다.
  * keystore 파일 자체는 repo 에 저장 될 수 있지만, 비밀번호가 `key.properties`에 저장되므로, 로컬 컴퓨터에만 저장되고, 원격 repo 에는 저장되지 않는다.
    * 단, private repo 인 경우, --force 옵션으로 강제 추가를 할 수 있다.
  * 참고로 flapp 의 key.properties 위치에 저장을 한다.



### pubspec.yaml

* 기본 앱은 `lib/main.dart`를 사용합니다. 이 때, 아래와 같이 프로젝트 설정을 해야합니다.
  * `apps/default/defualt.pubspec.app.yaml` 을 `pubspec.yaml` 로 복사(또는 링크)해서 사용합니다.
  * `apps/default/defualt.Info.plist` 를 `ios/Runnder/Info.plist` 로 복사(또는 링크)해서 사용합니다.
* 그 외 각 엡은
  * `apps/APP_NAME/APP_NAME.pubspec.yaml` 을 `pubspec.yaml` 로 복사(또는 링크)해서 사용합니다.
  * `apps/APP_NAME/APP_NAME.plist` 를 `ios/Runnder/Info.plist` 로 복사(또는 링크)해서 사용합니다.


## 멀티 앱 배포

* 먼저 아래와 같이 앱 배포 준비를 합니다.

* 앱 버전
  * Android 는 pubspec.yaml 에서 저정
  * iOS 에서는 각 앱을 배포 할 때 마다 Xcode 에서 수동으로 지정.

* 앱 이름 지정
  * Android 는 flapp.json 의 `name` 속성에 지정
  * iOS 는 각 앱의 Info.plist 에 지정

* 앱 아이콘
  * Android 와 iOS 모두 https://pub.dev/packages/flutter_launcher_icons 를 사용합니다.
  * 각 앱의 pubspec 에 앱 아이콘을 지정하고 작성합니다.

* 스플래시 화면 작성
  * Android 에서는 미리 작성해서 flaap.json 에 폴더 복사를 합니다.
  * iOS 에서는 각 앱을 배포 할 때 마다 Xcode 에서 수동으로 지정.

* Key store 준비 등 여러가지 준비가 필요합니다.
  * Android 에서는 `flapp.json` 을 따릅니다.
  * iOS 에서는 필요 없음.

* 그리고 아래의 각 앱 별로 패키징 합니다.

### Android 에서 패키징

* Firebase Auth 구글 Sign in 을 하는 경우, 릴리스용 SHA-1 print 등록


* $ flapp --app APP_NAME

* App bundle 생성
  * -t 와 같이 target 을 지정해서, 빌드하면 됩니다.
  * flutter build appbundle -t lib/apps/korea_flutter_community/korea_flutter_community.main.dart
  * 그리고 Playstore 에 등록

* 테스트 하는 방법. 릴리스 버전으로 빌드해서, 핸드폰에 넣어 테스트하기 위해서는 APK 를 생성합니다.
  * flutter build apk --release -t lib/apps/korea_flutter_community/korea_flutter_community.main.dart
  * 그리고 flutter install 로 핸드폰에 실행


### iOS 에서 패키징

* flapp --doctor 와 같이 해서 현재 앱 설정을 확인합니다.

* 필욯마녀 flapp --app APP_NAME 와 같이 앱을 변경하빈다.

* 아래와 같이 CLI 에서 먼저 빌드를 합니다.
  * $ flutter build ios --release -t ...

* Xcode 에서 배포




## 앱 Release 빌드 후 실행

* Release 빌드 후 직접 핸드폰에서 실행하고자 한다면 .apk 파일을 생성해야 한다. 아래의 예제를 참고한다.

$ flutter build apk --release -t lib/apps/korea_flutter_community/korea_flutter_community.main.dart
$ flutter install



## 푸시 알림

* 현재 푸시 알림은 파이어베이스 콘솔에서 직접 해야 한다.
* `Notification` 에서 notification title 과 text 를 적절하게 입력한다.
* `Target` 에서 `settings.ts` 에 있는 `fcmTopic` 값을 넣는다.
* `Scheduling` 에서 `Now` 를 선택한다.
* `Additional options` 에서
  * `click_action` 에 `FLUTTER_NOTIFICATION_CLICK` 의 값을 주고,
  * `postId` 에 글 도큐먼트 ID 를 입력하면 된다.

* 그리고 전송을 하면 된다.

* 앱이 Foreground 일 때에는 스낵바가 보이고, Close 를 클릭하면 닫고, 내용을 클릭하면 해당 글 페이지로 이동한다.

* 앱이 백그라운드 또는 종료 되었을 때, 푸시 알림이 핸드폰의 시스템 tray 에 보이는데, 클릭하면 글 페이지로 바로 이동한다.




## 앱 업데이트 알림

* 앱 업데이트 알림은
  * 업데이트가 있을 때, 운영체제에서 자동으로 업데이트를 한다.
  * 업데이트가 있을 때, 전체 푸시 알림
  * 공지사항에 등록,
  과 같이 한다.

* 따로 업데이트 기능이나 알림 버튼을 화면에 뛰우지 않는다.




## 주의 사항

* `APP_NAME.settings.dart` 는 hard link 되기 때문에 `import ../..` 와 같은 상대 경로를 지정하면 경로 문제가 생길 수 있다.
  * 따라서 가능한 package import 외에는 import 를 하지 않는다.


## 문제 해결 Trouble Shooting

* Object does not exist at location
  * Firestore folder path 가 settings.dart 에 올바로 설정되어져 있는지 확인을 한다.

* Firebase 관련 에러
  * ios/Runnder/GoogleService-Info.plist 파일이 올바로 연결되어져 있는지 본다.
  * Bundle ID 와 Firebase 앱 ID 가 올바른지 확인한다.
  * 예를 들어, Firebase 에 Auth Sign-in method 에서 Facebook 로그인을 활성화 했는데,
    * `the identity provider configuration is not found` 와 같은 에러가 나면, Facebook 로그인을 활성화 하지 않았다른 것으로 GoogleService-Info.plist 가 다른 Firebase 의 것일 가능성이 크다.
    * 참고로 VSCode 에서 ios/Runnder/GoogleService-Info.pst 와 Xcode 에 등록된 것이 서로 다를 수 있다.
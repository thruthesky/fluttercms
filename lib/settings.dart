import 'package:kakao_flutter_sdk/link.dart';


/// 멀티 앱 설정 파일
/// 
/// README 참고
/// korea flutter community settings
///
/// 이 설정 파일은 Flutterbase 에서 사용하기 위한 것이다.
class Settings {
  static String version = '1.0.2';
  static bool initialized = false;

  /// 테스트를 하고자 한다면 [testApp] 을 true 로 지정한다.
  static final bool testApp = false;

  /// Storage 의 Folder path.
  /// [Firebase => Storage => Files] 에 나오는 Folder path 를 이곳에 기록한다.
  static final String storageLink = 'gs://korean-flutter-community.appspot.com';

  /// 비밀키.
  ///
  /// 카카오톡이나 네이버 등에서 소셜 로그인을 하면, Firebase 와 연동을 위해서, Firebase Auth 에 자동으로 가입하는데,
  /// 이 때, 비밀번호로 사용된다.
  ///
  /// 이 secret 키는 외부에 노출되면 안된다.
  /// 또한 이 값은 한번 정해지면, 변경되면 안된다. 이미 가입된 경우, 이 값을 변경하면 비밀번호가 맞지 않게 된다.
  ///
  /// 참고로. 아래의 secretKey 만 비밀번호로 사용되는 것이 아니라, 사용자 번호도 추가된다.
  /// 하지만 그래도, 아래의 값이 노출되면 굉장히 위험하다.
  ///
  /// 만약, 이메일과 비밀번호로 로그인을 하지 못하게 막고 오직 소셜 로그인만 하게 한다면, 보다 안전하게 된다.
  static final String secretKey = '_.Oo_x,~Wc0742PCqnoo,?g!';

  /// 페이스북 로그인
  ///
  /// 페이스북 앱 아이디와 redirect url.
  static final String facebookAppId = '204627950607047';
  static final String facebookLoginRedirectUrl =
      'https://www.facebook.com/connect/login_success.html';

  /// 푸시 알림.
  ///
  /// 모든 사용자가 기본적으로 가입하는 전체 토픽이다.
  static String fcmTopic = 'koreafluttercommunity';

  /// 글 읽기 라우트
  static String postViewRoute = 'postView';



  /// 이 함수는 main.dart 에서 호출 되어야 한다.
  init() {
    initialized = true;

    /// 카카오톡 로그인
    /// native app id 와 javascript client id
    KakaoContext.clientId = 'c298da0e317591a81877124ee41160f7';
    KakaoContext.javascriptClientId = "a08bb1458ffff7bbb8188036ce50a280";
  }
}

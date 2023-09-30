import 'package:google_sign_in/google_sign_in.dart';

class GoogleService {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  GoogleService._() {}

  static GoogleService? _instance;
  static GoogleService? get instance {
    _instance ??= GoogleService._();
    return _instance;
  }

  void signInService() async {
    try {
      await this.googleSignIn.signIn();
    } catch (e) {
      print(e.toString());
    }
  }
}

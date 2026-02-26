// Adapter for existing auth helper — new canonical import: package:govunity_connect/services/auth_service.dart

export 'package:govunity_connect/helper/auth_helper.dart'
    show FirebaseAuthHelper, UserModel;
import 'package:govunity_connect/helper/auth_helper.dart'
    show FirebaseAuthHelper;

/// Backwards-compatible wrapper class (optional) — prefer using FirebaseAuthHelper directly.
class AuthService {
  static final helper = FirebaseAuthHelper.firebaseAuthHelper;
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:types_for_auth/types_for_auth.dart';

import 'user_auth_state_flutterfire.dart';

extension UserExtension on User? {
  UserAuthStateFlutterfire toState() {
    return UserAuthStateFlutterfire(
        signedIn:
            (this == null) ? SignedInState.notSignedIn : SignedInState.signedIn,
        uid: this?.uid,
        displayName: this?.displayName,
        photoURL: this?.photoURL);
  }
}

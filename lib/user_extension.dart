import 'package:firebase_auth/firebase_auth.dart';
import 'package:types_for_auth/types_for_auth.dart';

import 'flutterfire_user_auth_belief.dart';

extension UserExtension on User? {
  FlutterfireUserAuthBelief toBelief() {
    return FlutterfireUserAuthBelief(
        signedIn:
            (this == null) ? SignedInState.notSignedIn : SignedInState.signedIn,
        uid: this?.uid,
        displayName: this?.displayName,
        photoURL: this?.photoURL);
  }
}

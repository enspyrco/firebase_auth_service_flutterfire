import 'package:json_utils/json_utils.dart';
import 'package:types_for_perception/auth_beliefs.dart';
import 'package:types_for_perception/beliefs.dart';

import 'user_auth_state_flutterfire.dart';

class AuthStateFlutterfire implements AuthBeliefs, CoreBeliefs {
  const AuthStateFlutterfire({this.user = const UserAuthStateFlutterfire()});

  @override
  final UserAuthStateFlutterfire user;

  @override
  AuthStateFlutterfire copyWith({covariant UserAuthStateFlutterfire? user}) =>
      AuthStateFlutterfire(user: user ?? this.user);

  @override
  JsonMap toJson() => {'user': user.toJson()};

  @override
  bool operator ==(Object other) =>
      other is AuthStateFlutterfire && other.user == user;

  @override
  int get hashCode => user.hashCode;
}

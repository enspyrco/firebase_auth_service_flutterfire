import 'package:abstractions/identity.dart';
import 'package:json_utils/json_utils.dart';
import 'package:abstractions/beliefs.dart';

import 'flutterfire_user_auth_belief.dart';

class FlutterfireIdentityBeliefs implements IdentityBeliefs, CoreBeliefs {
  const FlutterfireIdentityBeliefs(
      {this.user = const FlutterfireUserAuthBelief()});

  @override
  final FlutterfireUserAuthBelief user;

  @override
  FlutterfireIdentityBeliefs copyWith(
          {covariant FlutterfireUserAuthBelief? user}) =>
      FlutterfireIdentityBeliefs(user: user ?? this.user);

  @override
  JsonMap toJson() => {'user': user.toJson()};

  @override
  bool operator ==(Object other) =>
      other is FlutterfireIdentityBeliefs && other.user == user;

  @override
  int get hashCode => user.hashCode;
}

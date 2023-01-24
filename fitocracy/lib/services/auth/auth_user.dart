import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  /*
  'This class is used to update the users email verification status'

  Here a constructor is used to initialize value of email verification as bool
  as stored in firebase user.
  True means user is verified and vice versa.

  Here a factory constructor is used which takes value of User and passes user
  email verification status. 

  */
  final bool isEmailVerified;

  const AuthUser({required this.isEmailVerified});

  factory AuthUser.fromFirebase(User user) =>
      AuthUser(isEmailVerified: user.emailVerified);
}

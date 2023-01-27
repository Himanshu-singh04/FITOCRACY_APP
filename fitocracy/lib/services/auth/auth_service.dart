import 'package:flutter/material.dart';
import 'package:fitocracy/services/auth/auth_provider.dart';
import 'package:fitocracy/services/auth/auth_user.dart';
import 'package:fitocracy/services/auth/firebase_auth_provider.dart';

class AuthService implements AuthProvider {
  /*
    This class is used to pass the required parameters of the AuthProvider
    class from user to this class which goes to Firebase Auth Provider
  */
  final AuthProvider provider;

  const AuthService(this.provider);

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider());

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) =>
      provider.createUser(email: email, password: password);

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) =>
      provider.logIn(email: email, password: password);

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();

  @override
  Future<void> initalize() => provider.initalize();
}

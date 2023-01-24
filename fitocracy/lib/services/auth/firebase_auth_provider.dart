import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:fitocracy/firebase_options.dart';
import 'package:fitocracy/services/auth/auth_exceptions.dart';
import 'package:fitocracy/services/auth/auth_user.dart';
import 'package:fitocracy/services/auth/auth_provider.dart';

import 'package:firebase_auth/firebase_auth.dart'
    show
        EmailAuthProvider,
        FirebaseAuth,
        FirebaseAuthException,
        PhoneAuthCredential,
        PhoneAuthProvider;

class FirebaseAuthProvider implements AuthProvider {
  /*
    This class contains actual implementation of Firebase Authentication.
  */

  /*
    Future => A future of type Future<T> completes with a value of type T.
    For example, a future with type Future<String> produces a string value. 
    If a future doesn’t produce a usable value, then the future’s type is Future<void>.
  */

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) async {
    /*
      This class overrides the Authprovider class function of creating user in Firebase.
      
      Firstly two required parameters are taken which is passed from main UI code(User)
      to auth service which passes it here.

      In try block the first command is creating user with email and password provided
      by user and it this task creates the user in Firebase Server, so it is a asynchronous
      task and exceptions also handeled if any arises.

      After which currentUser is called which is a getter which reinitializes the currentUser
      status. If the user is null, it will return null. If the user is not null it will 
      return AuthUser.

      Next the check if the user is created if the user is created it will AuthUser,or
      else it will return User Not Logged In Excpetion.


    */

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final user = currentUser;
      if (user != null) {
        return user;
      } else {
        throw UserNotLoggedInAuthException();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw WeakPasswordAuthException();
      } else if (e.code == 'email-already-in-use') {
        throw EmailAlreadyInUseAuthException();
      } else if (e.code == 'invalid-email') {
        throw InvalidEmailAuthException();
      } else {
        throw GenericAuthExceptions();
      }
    } catch (_) {
      throw GenericAuthExceptions();
    }
  }

  @override
  AuthUser? get currentUser {
    /*
      Getters and setters are special methods that provide read and write access to an object’s properties.
      It is used to retrieve a particular class field and save it in a variable.
      All classes have a default getter method but it can be overridden explicitly
      return_type get field_name{
            ...
          }
    */

    /*
      In the getter firstly the current user who has been logged in (can be null)
      information is retrived and stored in a variable.

      If the user is signed in it will return AuthUser else it will return null.
    */
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      return AuthUser.fromFirebase(user);
    } else {
      return null;
    }
  }

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) async {
    /*
      In try block the first command is signing up the  user with email and password provided
      by user and it this task will check the user credentials in Firebase Server, so it is a asynchronous
      task and exceptions also handeled if any arises.

      After which currentUser is called which is a getter which reinitializes the currentUser
      status. If the user is null, it will return null. If the user is not null it will 
      return AuthUser.

      Next the check if the user is created if the user is created it will AuthUser,or
      else it will return User Not Logged In Excpetion.
    */
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      final user = currentUser;
      if (user != null) {
        return user;
      } else {
        throw UserNotLoggedInAuthException();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw UserNotFoundAuthException();
      } else if (e.code == 'wrong-password') {
        throw WrongPasswordAuthException();
      } else {
        throw GenericAuthExceptions();
      }
    } catch (_) {
      throw GenericAuthExceptions();
    }
  }

  @override
  Future<void> logOut() async {
    /*
      First line gets the instance of current user which is logged in .
      If the user is null then it means user is not logged in so whats the point
      of getting logout, so it throws User not logged in exception.
      Whereas if the User is logged in it will logout of the device.
    */
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await FirebaseAuth.instance.signOut();
    } else {
      throw UserNotLoggedInAuthException();
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    /*
      First line gets the instance of current user which is logged in 
      (which can be null if not signed in).

      If the user is null then throw not logged in exception.

      If the user is not null which means the user has logged in and it exists, 
      so it will send a email verification to the users email id from where the
      user can verify the email and when verified the user property of emailverification
      becomes true.


    */
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.sendEmailVerification();
    } else {
      throw UserNotLoggedInAuthException();
    }
  }

  @override
  Future<void> initalize() async {
    /*
      Initializes the Firebase based upon the platform it is being runned.
    */
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}

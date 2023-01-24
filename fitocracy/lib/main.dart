import 'dart:developer';
import 'package:fitocracy/pages/dr_home_page.dart';
import 'package:fitocracy/pages/fe_home_page.dart';
import 'package:fitocracy/pages/forgot_password.dart';
import 'package:fitocracy/pages/home_page.dart';
import 'package:fitocracy/pages/registration_page.dart';
import 'package:fitocracy/pages/stash_page.dart';
import 'package:fitocracy/pages/y_home_page.dart';
import 'package:fitocracy/services/auth/auth_service.dart';
import 'package:fitocracy/utils/verify_email_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/login_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => StartPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.forgotpassRoute: (context) => Forgotpass(),
        MyRoutes.stashRoute: (context) => Stash(),
        MyRoutes.registrationRoute: (context) => Registration(),
        MyRoutes.y_home_page: (context) => y_home_page("Yogic Ways"),
        MyRoutes.fe_home_page: (context) => fe_home_page("Fitness Enthusiast"),
        MyRoutes.dr_home_page: (context) => dr_home_page("Disease Related"),
        MyRoutes.verifyEmailRoute: (context) => VerifyEmailView()
      },
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AuthService.firebase().initalize(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              AuthService.firebase().logOut();
              final user = AuthService.firebase().currentUser;
              if (user != null) {
                if (user.isEmailVerified) {
                  log('User is Verified');
                  return const HomePage();
                } else {
                  AuthService.firebase().sendEmailVerification();
                  return const VerifyEmailView();
                }
              } else {
                return const Stash();
              }
            default:
              return const CircularProgressIndicator();
          }
        });
  }
}

import 'dart:developer';
import 'package:fitocracy/fe_all_info/bench_press.dart';
import 'package:fitocracy/fe_all_info/bicep_curls.dart';
import 'package:fitocracy/fe_all_info/burpees.dart';
import 'package:fitocracy/fe_all_info/crunches.dart';
import 'package:fitocracy/fe_all_info/deadlifts.dart';
import 'package:fitocracy/fe_all_info/dumbbell_press.dart';
import 'package:fitocracy/fe_all_info/glute_bridge.dart';
import 'package:fitocracy/fe_all_info/lunges.dart';
import 'package:fitocracy/fe_all_info/overhead_press.dart';
import 'package:fitocracy/fe_all_info/planks.dart';
import 'package:fitocracy/fe_all_info/push_ups.dart';
import 'package:fitocracy/fe_all_info/side_planks.dart';
import 'package:fitocracy/fe_all_info/squats.dart';
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
  WidgetsFlutterBinding.ensureInitialized();
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
        MyRoutes.verifyEmailRoute: (context) => VerifyEmailView(),
        MyRoutes.push_ups: (context) => push_ups(),
        MyRoutes.squats: (context) => squats(),
        MyRoutes.lunges: (context) => lunges(),
        MyRoutes.planks: (context) => planks(),
        MyRoutes.bicep_curls: (context) => bicep_curls(),
        MyRoutes.burpees: (context) => burpees(),
        MyRoutes.side_planks: (context) => side_planks(),
        MyRoutes.bench_press: (context) => bench_press(),
        MyRoutes.deadlifts: (context) => deadlifts(),
        MyRoutes.crunches: (context) => crunches(),
        MyRoutes.dumbbell_press: (context) => dumbbell_press(),
        MyRoutes.glute_bridge: (context) => glute_bridge(),
        MyRoutes.overhead_press: (context) => overhead_press()
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

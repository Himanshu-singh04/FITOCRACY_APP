import 'package:flutter/material.dart';
import 'package:fitocracy/utils/routes.dart';
import 'package:fitocracy/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      appBar: AppBar(
        title: const Text(
          'Fitocracy',
          style: TextStyle(
            fontFamily: 'Vollkorn',
            fontSize: 50,
            letterSpacing: 7,
            color: Color.fromARGB(255, 186, 217, 194),
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 186, 217, 194),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 30),
          const Text(
            'Verify your Account',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: const Text(
              "We've Send you an email verification. Please open it to verify your account.",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: const Text(
              "If you haven't recieved a verification email yet, press the button below",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Material(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 186, 217, 194),
            child: InkWell(
              onTap: () async {
                await AuthService.firebase().sendEmailVerification();
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 50,
                width: 200,
                child: const Center(
                  child: Text(
                    'Send Email Verification',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () async {
                await AuthService.firebase().logOut();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    MyRoutes.registrationRoute, (route) => false);
              },
              child: const Text(
                'Restart',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 186, 217, 194),
                ),
              )),
          const Text(
            'Note: Do check the spam section!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}

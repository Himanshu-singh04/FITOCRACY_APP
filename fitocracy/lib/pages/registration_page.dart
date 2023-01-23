import 'dart:developer';

import 'package:fitocracy/services/auth/auth_exceptions.dart';
import 'package:fitocracy/services/auth/auth_service.dart';
import 'package:fitocracy/utils/show_error_dialog.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late final TextEditingController _name;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmpassword;

  @override
  void initState() {
    //set the initial value of text field
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmpassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmpassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 186, 217, 194),
        child: Column(
          children: [
            SizedBox(height: 35),
            Image.asset(
              "assets/welcome.jpeg",
              fit: BoxFit.contain,
              color: Color.fromARGB(255, 186, 217, 194),
              colorBlendMode: BlendMode.colorBurn,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Text("Welcome onboard!!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Enter your Fullname",
                        fillColor: Colors.white70),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Fullname cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: _email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Enter your Email Id",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Enter password",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: _confirmpassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        hintText: "Confirm password",
                        fillColor: Colors.white70),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Register",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    onPressed: () async {
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      final email = _email.text;
                      final password = _password.text;
                      final confirmPassword = _confirmpassword.text;
                      final name = _name.text;
                      try {
                        final isPasswordSame =
                            (password == confirmPassword) ? true : false;
                        log(isPasswordSame.toString());
                        log('$email + $password');
                        if (isPasswordSame) {
                          await AuthService.firebase()
                              .createUser(email: email, password: password);
                          final user = AuthService.firebase().currentUser;

                          if (user?.isEmailVerified ?? false) {
                            // devtools.log(userCredential.toString());
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                MyRoutes.homeRoute, (route) => false);
                          } else {
                            await AuthService.firebase()
                                .sendEmailVerification();
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                MyRoutes.verifyEmailRoute, (route) => false);
                          }
                        } else {
                          showErrorDiaglog(
                              context, 'Confirm password is different!');
                        }
                      } on WeakPasswordAuthException {
                        await showErrorDiaglog(context, 'Weak Password');
                      } on EmailAlreadyInUseAuthException {
                        await showErrorDiaglog(
                            context, 'Email is already in use');
                      } on InvalidEmailAuthException {
                        await showErrorDiaglog(
                            context, 'This is an invalid email address');
                      } on GenericAuthExceptions {
                        await showErrorDiaglog(context, 'Failed to register');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 248, 165, 40),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        fixedSize: Size(200, 50)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Already have an account?",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  ElevatedButton(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlueAccent,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 186, 217, 194),
                      elevation: 0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

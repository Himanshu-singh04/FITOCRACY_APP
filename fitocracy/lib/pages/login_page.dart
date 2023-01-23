import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromARGB(255, 186, 217, 194),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/login_page.jpeg",
                  fit: BoxFit.contain,
                  color: Color.fromARGB(255, 186, 217, 194),
                  colorBlendMode: BlendMode.colorBurn,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome $name!!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: ((value) {
                          name = value;
                          setState(() {});
                        }),
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password should be more than 6 characters";
                            }
                            return null;
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 215),
                  child: ElevatedButton(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.forgotpassRoute);
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Color.fromARGB(255, 186, 217, 194),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: Color.fromARGB(255, 249, 172, 58),
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 25),
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton ? 75 : 250,
                      height: 50,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.black,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),

                      //  shape: changebutton?BoxShape.circle: BoxShape.rectangle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

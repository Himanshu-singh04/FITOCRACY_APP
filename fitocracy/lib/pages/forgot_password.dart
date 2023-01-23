import 'package:flutter/material.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 186, 217, 194),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 16),
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 248, 165, 40)),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
              onPressed: () {
                return null;
              },
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/pass_image.png",
              fit: BoxFit.contain,
              // color: Color.fromARGB(255, 112, 190, 114),
              //colorBlendMode: BlendMode.overlay,
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Registered email-id",
                labelText: "Enter Registered email-id",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Text(
                "Send Verifiaction link",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                return null;
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 248, 165, 40),
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}

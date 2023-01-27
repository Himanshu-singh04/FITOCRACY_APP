import 'dart:async';

import 'package:flutter/material.dart';

class lunges extends StatefulWidget {
  @override
  State<lunges> createState() => _lungesState();
}

class _lungesState extends State<lunges> {
  int _counter = 10;
  late Timer _timer;

  void _startTimer() {
    _counter = 10;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 186, 217, 194),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/Lunges.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lunges",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                child: Text(
                  "  Benefits  ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                color: Colors.green,
              ),
              // Scaffold(),
              // Text("one of ")
              Text(
                  '''Good for Weight Loss: Lunges target the large muscles in the lower body. Therefore, they help build lean muscle while reducing body fat.

Improves Balance: Lunges cause you to work both sides of your body independently. This helps you develop your stabilizing muscles, so you become more balanced and more coordinated.

Improves Posture and Alignment: Lunges' ability to work both sides of the body improve posture and alignment.

Versatile: Lunges are great because they are so versatile. There are a variety of lunges you can do that will work different sections of the lower body.

Do Them Anywhere: Because lunges don't require equipment, you can do them anywhere in the park, in the office, at home.'''),
              SizedBox(
                height: 30,
              ),
              Material(
                child: Text(
                  "  Risks  ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                color: Colors.red.shade400,
              ),
              // Scaffold(),
              // Text("one of ")
              Text(
                  '''There's one downside to lunges, it's that they can result in injuries like overstretching'''),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Count Down Timer'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _startTimer();
                      },
                      child: Text('Start Timer')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _timer.cancel();
                      },
                      child: Text('Pause')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _timer.cancel();
                          _counter = 10;
                        });
                      },
                      child: Text('Reset'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

class bicep_curls extends StatefulWidget {
  @override
  State<bicep_curls> createState() => _bicep_curlsState();
}

class _bicep_curlsState extends State<bicep_curls> {
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
                  "assets/bicep_curls.jpeg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Bicep Curls",
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
                  '''Bicep curls are one of the most effective exercises for increasing the size and strength of the biceps. They work both heads of the biceps evenly. Minimal equipment is required to perform bicep curls. You don't need any kind of special machine, bench, or pad and can do them virtually anywhere. Bicep curls are very easy to learn, so they are great for beginners. There's less injury risk associated with bicep curls compared to preacher curls. You don't need a spotter and can safely train to failure.'''),
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
                  '''It's easier to cheat on a bicep curl by swinging or using other muscles to help get the weight up. Improper form can lead to biceps tendinitis which is typically associated with pain in the front of the shoulder.'''),
              SizedBox(
                height: 30,
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

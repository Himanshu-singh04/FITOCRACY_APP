import 'dart:async';

import 'package:flutter/material.dart';

class glute_bridge extends StatefulWidget {
  @override
  State<glute_bridge> createState() => _glute_bridgeState();
}

class _glute_bridgeState extends State<glute_bridge> {
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
                  "assets/glute_bridge.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Glute Bridge",
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
                  '''Glute bridges are accessible and great for beginners. As long as you can get down on the floor, you can do a glute bridge. In fact, individuals who have never done a hip thrust should start with glute bridges to get the hang of the hip movement and build a foundation of strength.'''),
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
                  '''Glute bridges can help you build a good foundation of strength and tone your glute muscles, but at a certain point you'll max out your booty gains. You also use a smaller range of motion when you do glute bridges, which isn't as effective for building size and strength. Still, there are options for adding challenge.'''),
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

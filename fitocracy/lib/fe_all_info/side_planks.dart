import 'dart:async';

import 'package:flutter/material.dart';

class side_planks extends StatefulWidget {
  @override
  State<side_planks> createState() => _side_planksState();
}

class _side_planksState extends State<side_planks> {
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
                  "assets/side_planks.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "side_planks",
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
                  '''It might look very easy and simple at first, however looks can be deceiving. The plank is one of the most challenging exercises of all. You might also ask if its benefits outweigh the risks. The majority of fitness enthusiasts are very skeptical about the plank.

They figure there are superior ways to train the abdominal muscles, like the butterfly crunches, hanging leg raises, reverse crunches, the stomach vacuum etc.'''),
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
                  '''Keep in mind that doing planks alone won’t give you that kind of results. To get all the benefits of it, combine it with other core exercises as a part of a consistent training regimen'''),
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

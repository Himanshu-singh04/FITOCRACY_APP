import 'dart:async';

import 'package:flutter/material.dart';

class burpees extends StatefulWidget {
  @override
  State<burpees> createState() => _burpeesState();
}

class _burpeesState extends State<burpees> {
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
                  "assets/burpees.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Burpees",
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
                  '''Gets you sweating - The exercise will have you sweating vigorously after just a couple of minutes. It's great for warming up and getting your body ready for further, higher intensity exercise.
Full body exercise - Burpees are perfect for the whole body and they can get you fitter, faster. With time, you can attune your body for burpees and they'll help you rid yourself of calories quickly.
Functionally beneficial - Burpees work on a range of muscles in a functional manner, so the improvements in strength and mobility can be seen and felt in day-to-day life, and not just in the gym.'''),
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
                  '''Injury Potential - A lot of people risk injury to their wrists and anterior shoulder muscle because of bad burpee form or due to prior injuries. It's important to learn the proper technique before attempting it and avoid pushing yourself too hard. 
Variety is needed - To improve the effectiveness of your burpees, you'll need to learn variations on form and sets. There are endless iterations and versions of this workout, depending on where and with whom you train. '''),
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

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class fe_home_page extends StatefulWidget {
  fe_home_page(this.title) : super();
  final String title;

  @override
  State<fe_home_page> createState() => _fe_home_pageState();
}

class _fe_home_pageState extends State<fe_home_page> {
  List<String> exercises = [
    "Push-ups",
    "Squats",
    "Lunges",
    "Planks",
    "Bicep Curls",
    "Circuit Training",
    "Burpees",
    "Side Planks",
    "Bench Press",
    "Deadlifts",
    "Crunches",
    "Dumbbell Press",
    "Planks",
    "Glute Bridge",
    "Overhead Press",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 186, 217, 194),
        title: Text('Fitness Enthusiast'),
        centerTitle: true,
      ),
      body: Material(
        color: Color.fromARGB(255, 186, 217, 194),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  child: Text(
                    "               Push-ups          ",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Squats",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Lunges",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Planks",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Biceps Curls",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Circuit Training",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Burpees",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Side Plancks",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Bench Press",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Deadlifts",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Crunches",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Dumbbell Press",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Plancks",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Glute bridge",
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
                SizedBox(
                  height: 4,
                ),
                ElevatedButton(
                  child: Text(
                    "Overhead Press",
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
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

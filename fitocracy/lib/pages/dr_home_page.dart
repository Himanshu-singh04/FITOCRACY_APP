import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class dr_home_page extends StatefulWidget {
  dr_home_page(this.title) : super();
  final String title;

  @override
  State<dr_home_page> createState() => _dr_home_pageState();
}

class _dr_home_pageState extends State<dr_home_page> {
  List<String> exercises = [
    "Arthritis",
    "Asthma",
    "Back Pain",
    "Cancer",
    "Dementia",
    "Depression and Anxiety",
    "Diabetes",
    "Heart Disease",
    "Osteoporosis",
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
                    "               Arthritis         ",
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
                    "Asthma",
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
                    "Back Pain",
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
                    "Cancer",
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
                    "Dementia",
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
                    "Depression and Anxiety",
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
                    "Diabetes",
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
                    "Heart Disease",
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
                    "Osteoporosis",
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
        ),
      ),
    );
  }
}

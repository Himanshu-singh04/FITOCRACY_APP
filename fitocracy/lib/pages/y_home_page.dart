import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class y_home_page extends StatefulWidget {
  y_home_page(this.title) : super();
  final String title;

  @override
  State<y_home_page> createState() => _y_home_pageState();
}

class _y_home_pageState extends State<y_home_page> {
  List<String> exercises = [
    "Tadasana",
    "Utkatasana",
    "Virksasana",
    "Lunge Pose",
    "Trikonasana",
    "Anjaneyasana",
    "Bakasana",
    "Navasana",
    "Virasana",
    "Bhujangasana",
    "Matsyasana",
    "Dhanurasana",
    "Shavasana",
    "Balasana",
    "Dandasana",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 186, 217, 194),
        title: Text('Yogic Aspect'),
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
                    "              Tadasana           ",
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
                    "Utkatasana",
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
                    "Virksasana",
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
                    "Lunge Pose",
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
                    "Trikonasana",
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
                    "Anjaneyasana",
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
                    "Bakasana",
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
                    "Navasana",
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
                    "Virasana",
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
                    "Bhujangasana",
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
                    "Matsyasana",
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
                    "Dhanurasana",
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
                    "Shavasana",
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
                    "Balasana",
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
                    "Dandasana",
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

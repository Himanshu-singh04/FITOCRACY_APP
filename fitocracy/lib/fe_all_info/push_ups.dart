import 'package:flutter/material.dart';

class push_ups extends StatefulWidget {
  @override
  State<push_ups> createState() => _push_upsState();
}

class _push_upsState extends State<push_ups> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://via.placeholder.com/300'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Hello, World!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fitocracy/pages/dg_home_page.dart';
import 'package:flutter/material.dart';

import '../utils/routes.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Fitocracy"), centerTitle: true),
        body: SingleChildScrollView(
          child: Column(children: [
            InkWell(
              child: Material(
                // margin: EdgeInsets.only(bottom: 10),
                // height: 200,
                child: Image.asset(
                  "assets/fitness_enthusiast.jpeg",
                  // width: 285,
                  fit: BoxFit.fill,
                ),
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.fe_home_page);
              },
            ),
            InkWell(
              child: Material(
                // margin: EdgeInsets.only(bottom: 10),
                // height: 200,
                child: Image.asset("assets/diet_guide.jpeg"),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.dg_home_page);
              },
            ),
            InkWell(
              child: Material(
                // margin: EdgeInsets.only(bottom: 10),
                // height: 200,
                child: Image.asset("assets/disease_related.jpeg"),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.dr_home_page);
              },
            ),
            InkWell(
              // margin: EdgeInsets.only(bottom: 10),
              // height: 200,
              child: Image.asset("assets/yogic_ways.jpeg"),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.y_home_page);
              },
            ),
          ]),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

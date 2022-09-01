import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterdicoding/Ui/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // void initState() {
    //   super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                child: Image(
                  image: AssetImage("asset/logo.png"),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 52,
                width: 325,
                child: Center(
                    child: Text(
                  "Stmik Indonesia Padang",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      )),
    );
  }
}

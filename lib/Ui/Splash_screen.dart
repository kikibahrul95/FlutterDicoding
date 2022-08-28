import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterdicoding/Ui/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              height: 80,
            ),
            Center(
              child: Container(
                height: 52,
                width: 325,
                // child: ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => Login()));
                //   },
                //   style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(17)),
                //       textStyle: TextStyle(fontSize: 15)),
                //   child: Center(
                //     child: Text(
                //       'Get Started',
                //       style: whitestyle.copyWith(fontSize: 18),
                //     ),
                //   ),
                // ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

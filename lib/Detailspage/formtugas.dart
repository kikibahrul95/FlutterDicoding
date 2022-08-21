import 'package:flutter/material.dart';
import 'package:flutterdicoding/theme.dart';
import 'package:lottie/lottie.dart';

class Formtugas extends StatelessWidget {
  const Formtugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  color: Colors.white,
                  height: 500,
                  width: 800,
                  child: LottieBuilder.network(
                    "https://assets9.lottiefiles.com/packages/lf20_ghxcp9go.json",
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                height: 80,
                width: 500,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "Opps Lagi ada perbaikan",
                    style: blackstyle.copyWith(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Formtugas extends StatelessWidget {
  const Formtugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.white,
          height: 100,
          width: 100,
          child: Image(
            image: AssetImage(
              "asset/maintance.png.png",
            ),
          ),
        ),
      ),
    );
  }
}

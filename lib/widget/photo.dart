import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.black),
          image: DecorationImage(
              image: AssetImage("asset/Profil.png"), fit: BoxFit.cover)),
    );
  }
}

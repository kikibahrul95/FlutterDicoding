import 'package:flutter/material.dart';
import 'package:flutterdicoding/Ui/home.dart';
import 'package:flutterdicoding/Ui/profil.dart';
import 'package:flutterdicoding/Ui/tugas.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int currentIndex = 0;
  final List<Widget> body = [HomePage(), Tugas(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Beranda",
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              color: Colors.grey,
            ),
            label: "Tugas",
            activeIcon: Icon(
              Icons.assignment,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
            label: "Profil",
            activeIcon: Icon(Icons.account_circle, color: Colors.blue),
          ),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

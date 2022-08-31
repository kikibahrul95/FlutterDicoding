import 'package:flutter/material.dart';
import 'package:flutterdicoding/Ui/Splash_screen.dart';

import 'package:flutterdicoding/service/Authemail.dart';
import 'package:flutterdicoding/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 220,
              margin: EdgeInsets.only(bottom: 24),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(bottom: 16),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/Profil.png'))),
                  ),
                  Text(
                    "Nama: Kiki Bahrul",
                    style: blackstyle.copyWith(fontSize: 18),
                  ),
                  Text(
                    " No Bp:17xxxxx",
                    style: blackstyle.copyWith(fontSize: 18),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.meeting_room,
                              color: Colors.blueAccent,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Kelas:",
                              style: blackstyle.copyWith(fontSize: 15),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'SI-2-B',
                              style: blackstyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.blueAccent,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Nomor Hp:",
                              style: blackstyle.copyWith(fontSize: 15),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '082145XXXXX',
                              style: blackstyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.blueAccent,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Email:",
                              style: blackstyle.copyWith(fontSize: 15),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'kiki@XXX.gmail.com',
                              style: blackstyle.copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: Size(double.infinity, 50)),
                icon: FaIcon(FontAwesomeIcons.doorOpen),
                label: Text("Logout"),
                onPressed: () {
                  Authemail().signOut().then((_) => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (contex) => SplashScreen()),
                      ));
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

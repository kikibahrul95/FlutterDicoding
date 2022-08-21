import 'package:flutter/material.dart';
import 'package:flutterdicoding/model/Dakel.dart';
import 'package:flutterdicoding/theme.dart';
import 'package:flutterdicoding/widget/kelas.dart';

import 'package:flutterdicoding/widget/photo.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  "Kelas anda",
                  style: blackstyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Column(
                          children: [
                            Text(
                              "Kiki Bahrul",
                              style: blackstyle.copyWith(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1711000XXX",
                              style: blackstyle.copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Photo(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Container(
                  height: 40,
                  child: Text(
                    "Kelas yang Dipelajari",
                    style: blackstyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Kelas(Datakelas(
                          id: 1,
                          nama: "Kelas Aljabar",
                          imageurl: "asset/Galgoritma.png.png",
                          waktu: "Senin 07.00-09.00",
                          namadosen: "Bapak admaja")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Kelas(Datakelas(
                          id: 2,
                          nama: "Kelas Matematika",
                          imageurl: "asset/Gbahasa.png.png",
                          waktu: "Selasa 03.00-05.00",
                          namadosen: "Bapak Sutisna")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Kelas(Datakelas(
                          id: 3,
                          nama: "Kelas Bahasa",
                          imageurl: "asset/Gmathdiskrit.png.png",
                          waktu: "Rabu 08.00-11.00",
                          namadosen: "Ibu Elizza")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Kelas(Datakelas(
                          id: 4,
                          nama: "Kelas Java Dasar",
                          imageurl: "asset/GPemograman.png.png",
                          waktu: "Kamis 09.00-13.30",
                          namadosen: "Bapak Kelvin")),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

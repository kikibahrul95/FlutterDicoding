import 'package:flutter/material.dart';
import 'package:flutterdicoding/Detailspage/tugasdetail.dart';
import 'package:flutterdicoding/model/datatugas.dart';

import '../theme.dart';

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tugas",
                      style: blackstyle.copyWith(fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 550,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    DetailTugas(Datatugas(namatugas: "Tugas 1")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 2")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 3")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 4")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 5")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 6")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 7")),
                    SizedBox(
                      height: 10,
                    ),
                    DetailTugas(Datatugas(namatugas: "Tugas 8")),
                    SizedBox(
                      height: 10,
                    ),
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

import 'package:flutter/material.dart';
import 'package:flutterdicoding/Detailspage/formtugas.dart';
import 'package:flutterdicoding/model/datatugas.dart';

import '../theme.dart';

class DetailTugas extends StatelessWidget {
  final Datatugas datatugas;
  DetailTugas(this.datatugas);
  // const DetailTugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Formtugas()));
        },
        child: Container(
          height: 80,
          width: 100,
          // color: putih,
          decoration: BoxDecoration(
              // gradient: LinearGradient(colors: [
              //   Color(0xff2980B9),
              //   Color(0xff5E5E5E),
              //   Color(0xff4100E0),
              // ]),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.task_sharp,
                color: biru,
                size: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                datatugas.namatugas,
                style: blackstyle.copyWith(fontSize: 20),
              ),
              // Icon(
              //   Icons.clear,
              //   size: 35,
              //   color: Colors.redAccent,
              // ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.task_alt,
                size: 35,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}

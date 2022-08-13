import 'package:flutter/material.dart';
import 'package:flutterdicoding/Detailspage/pagekelas.dart';
import 'package:flutterdicoding/model/Dakel.dart';
import 'package:flutterdicoding/theme.dart';

class Kelas extends StatelessWidget {
  final Datakelas datakelas;
  Kelas(this.datakelas);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailKelas()));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 130,
              width: 100,
              color: Colors.blue,
              child: Column(
                children: [
                  Image.asset(
                    datakelas.imageurl,
                    width: 130,
                    height: 100,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                datakelas.nama,
                style:
                    blackstyle.copyWith(fontSize: 20, color: Colors.blueGrey),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.redAccent,
                  ),
                  Text(datakelas.waktu)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person_outline_rounded,
                  ),
                  Text(datakelas.namadosen)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

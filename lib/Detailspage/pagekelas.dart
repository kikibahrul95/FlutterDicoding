import 'package:flutter/material.dart';
import 'package:flutterdicoding/Detailspage/formtugas.dart';
import 'package:flutterdicoding/theme.dart';

class DetailKelas extends StatefulWidget {
  const DetailKelas({Key? key}) : super(key: key);

  @override
  State<DetailKelas> createState() => _DetailKelasState();
}

class _DetailKelasState extends State<DetailKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              // Image.asset("asset/conference.png",
              //     width: MediaQuery.of(context).size.width,
              //     height: 350,
              //     fit: BoxFit.cover),
              Padding(
                padding: EdgeInsets.only(left: edge, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    // decoration: BoxDecoration(
                    //     borderRadius:
                    //         BorderRadius.vertical(top: Radius.circular(20)),
                    //     color: putih),
                    child: Column(
                      children: [
                        Text(
                          "Detail kelas",
                          style: blackstyle.copyWith(fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Formtugas()));
                            },
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Formtugas()));
                              },
                              child: Container(
                                height: 80,
                                width: 280,
                                // color: putih,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xff2980B9),
                                      Color(0xff5E5E5E),
                                      Color(0xff4100E0),
                                    ]),
                                    border: Border.all(
                                      width: 5,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.task_alt,
                                      color: putih,
                                      size: 50,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Absensi",
                                      style: whitestyle.copyWith(fontSize: 30),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Formtugas()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 80,
                              width: 280,
                              // color: Colors.green,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff2980B9),
                                    Color(0xff5E5E5E),
                                    Color(0xff4100E0),
                                  ]),
                                  border: Border.all(
                                    width: 5,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_sharp,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Materi",
                                    style: whitestyle.copyWith(fontSize: 30),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Formtugas()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 80,
                              width: 280,
                              // color: Colors.green,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff2980B9),
                                    Color(0xff5E5E5E),
                                    Color(0xff4100E0),
                                  ]),
                                  border: Border.all(
                                    width: 5,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.task_sharp,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Tugas",
                                    style: whitestyle.copyWith(fontSize: 30),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

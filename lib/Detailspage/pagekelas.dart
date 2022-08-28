import 'package:flutter/material.dart';
import 'package:flutterdicoding/Detailspage/formtugas.dart';
import 'package:flutterdicoding/Ui/home.dart';
import 'package:flutterdicoding/theme.dart';

class DetailKelas extends StatelessWidget {
  const DetailKelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Image.asset("asset/Galgoritma.png.png",
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  fit: BoxFit.cover),
              Padding(
                padding: EdgeInsets.only(left: edge, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
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
                    height: 350,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        color: putih),
                    child: Column(
                      children: [
                        Text(
                          "Detail kelas",
                          style: blackstyle.copyWith(fontSize: 30),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                              builder: (context) =>
                                                  Formtugas()));
                                    },
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      // color: putih,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 4,
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.task_alt,
                                            color: biru,
                                            size: 50,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          // Text(
                                          //   "Absensi",
                                          //   style:
                                          //       whitestyle.copyWith(fontSize: 30),
                                          // )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  // color: Colors.green,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
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
                                      // Text(
                                      //   "Materi",
                                      //   style: whitestyle.copyWith(fontSize: 30),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  // color: Colors.green,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(30)),
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
                                      // Text(
                                      //   "Materi",
                                      //   style: whitestyle.copyWith(fontSize: 30),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: edge, right: edge),
                          child: Container(
                            height: 30,
                            width: 380,
                            // color: putih,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Absensi",
                                  style: blackstyle.copyWith(fontSize: 20),
                                ),
                                Text(
                                  "Materi",
                                  style: blackstyle.copyWith(fontSize: 20),
                                ),
                                Text(
                                  "Tugas ",
                                  style: blackstyle.copyWith(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Formtugas()));
                            },
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            child: Text(
                              "Lanjut Belajar",
                              style: whitestyle.copyWith(fontSize: 15),
                            ),
                          ),
                        )
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

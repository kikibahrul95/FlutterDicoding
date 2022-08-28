import 'package:flutter/material.dart';
import 'package:flutterdicoding/Tabbar.dart';
import 'package:flutterdicoding/Ui/loginemail.dart';
import 'package:flutterdicoding/service/auth.dart';

import '../service/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  child: Image.asset(
                    "asset/logo.png",
                    width: 150,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      minimumSize: Size(double.infinity, 50)),
                  icon: FaIcon(FontAwesomeIcons.google),
                  label: Text("Masuk dengan akun google"),
                  onPressed: () async {
                    await Authp.instance.signIn();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tabbar()));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      minimumSize: Size(double.infinity, 50)),
                  icon: FaIcon(FontAwesomeIcons.squareEnvelope),
                  label: Text("Masuk dengan Email & Password"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginemail()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

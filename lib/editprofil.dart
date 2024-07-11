import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kamus_trpl3b/listalluser.dart';
import 'package:kamus_trpl3b/insertuser.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();
  void clearText() {
    _username.clear();
    _password.clear();
    _email.clear();
    _address.clear();
  }

  Future<void> insertuser() async {
    String urlinsertUser =
        "https://irfanmaulanaa.000webhostapp.com/insertuser.php";
    try {
      var responseInsert = await http.post(Uri.parse(urlinsertUser), body: {
        "username": _username.text.toString(),
        "password": _password.text.toString(),
        "email": _email.text.toString(),
        "address": _address.text.toString(),
      });
      var newUser = json.decode(responseInsert.body);
      if (newUser == "true") {
        print("Data user Baru Berhasil ditambah");
      } else {
        print("Data user Baru gagal ditambahkan");
      }
    } catch (exc) {
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PKesehatan",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                "Edit Profile",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _username,
                decoration: InputDecoration(
                  labelText: "Fullname",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "Enter Fullname",
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                  suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.face_rounded,
                        color: Colors.green,
                      )),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                  suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.abc_sharp,
                        color: Colors.green,
                      )),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "Enter Phone Number",
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                  suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.ac_unit,
                        color: Colors.green,
                      )),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _address,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                  suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.face_rounded,
                        color: Colors.green,
                      )),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            SizedBox(
              width: 160,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  InsertNewUser();
                  clearText();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InsertNewUser()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade600,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                child: Text(
                  "Tambah",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:kamus_trpl3b/insertuser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kamus_trpl3b/login_screen.dart';
import 'package:kamus_trpl3b/utils/cek_session.dart';

class ListAllUser extends StatefulWidget {
  const ListAllUser({super.key});

  @override
  State<ListAllUser> createState() => _ListAllUserState();
}

class _ListAllUserState extends State<ListAllUser> {
  List alluser = [];
  Future<void> deleteUser(String id) async {
    String urlDeleteUser =
        "https://irfanmaulanaa.000webhostapp.com/deleteuser.php";
    try {} catch (exc) {
      print(exc);
    }
  }

  @override
  void initState() {
    super.initState();
    getAllUser();
  }

  Future<void> getAllUser() async {
    String urlAllUser =
        "https://irfanmaulanaa.000webhostapp.com/getdatauser.php";
    try {
      var response = await http.post(Uri.parse(urlAllUser));
      setState(() {
        alluser = json.decode(response.body);
      });
    } catch (exc) {
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pegawai",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                //sesi logout
                setState(() {
                  session.clearSession();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                });
              },
              icon: Icon(Icons.exit_to_app))
        ],
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: alluser.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(5),
            child: ListTile(
                leading: Icon(Icons.person, size: 24, color: Colors.red),
                title: Text(
                  alluser[index]["username"],
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  alluser[index]["addres"],
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add_alert_rounded,
                      size: 24,
                      color: Colors.red,
                    ),
                    Icon(
                      Icons.delete_forever_rounded,
                      size: 24,
                      color: Colors.green,
                    )
                  ],
                )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => InsertNewUser()),
          );
        },
        splashColor: Colors.green.shade700,
        backgroundColor: Colors.green.shade300,
        mini: true,
        child: Icon(Icons.add, size: 24, color: Colors.white),
      ),
    );
  }
}

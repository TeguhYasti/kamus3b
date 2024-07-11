import 'package:flutter/material.dart';
import 'package:kamus_trpl3b/editprofile.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final String studentId;

  ProfilePage({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app))
        ],
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Phone Number: $phoneNumber',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Student ID: $studentId',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => EditProfile()),
          );
        },
        splashColor: Colors.green.shade700,
        backgroundColor: Colors.green.shade300,
        mini: true,
        child: Icon(Icons.edit, size: 24, color: Colors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kamus_trpl3b/navbar.dart';
import 'package:kamus_trpl3b/login_screen.dart';
import 'package:kamus_trpl3b/splash_screen.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

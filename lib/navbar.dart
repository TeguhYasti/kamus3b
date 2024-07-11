import 'package:kamus_trpl3b/listalluser.dart';
import 'package:kamus_trpl3b/listproducts.dart';
import 'package:kamus_trpl3b/page_list_berita.dart';
import 'package:kamus_trpl3b/profile_screen.dart';
import 'package:kamus_trpl3b/shopping_cart.dart';
import "package:flutter/material.dart";
import 'package:google_nav_bar/google_nav_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    PageListBerita(),
    ListAllUser(),
    ProfilePage(name: 'irfan', email: 'irfan@gmail.com', phoneNumber: '123456', studentId: '1284564')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
            child: GNav(
              gap: 8,
              onTabChange: _navigateBottomBar,
              padding: EdgeInsets.all(16),
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              tabs: [
                GButton(
                  icon: Icons.book,
                  text: 'Berita',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Pegawai',
                ),
                GButton(
                  icon: Icons.person_3,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ));
  }
}

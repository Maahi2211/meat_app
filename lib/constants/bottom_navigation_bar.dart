// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_application_2/screens/CartScreen/mycartpage.dart';
import 'package:flutter_application_2/screens/HomeScreen/homescreen.dart';
import 'package:flutter_application_2/screens/OrderHistoryScreen/history.dart';
import 'package:flutter_application_2/screens/ProfileScreen/profile_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({
    super.key,
    required this.i,
  });
  final int i;
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late int selectIndex;

  @override
  void initState() {
    super.initState();
    selectIndex = widget.i; // Initialize selectIndex with the value of i
  }

  void change(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List<Widget> pages = [
    HomePage(
      location: '',
    ),
    History(),
    CartPage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: change,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
      ),
      body: pages[selectIndex],
    );
  }
}

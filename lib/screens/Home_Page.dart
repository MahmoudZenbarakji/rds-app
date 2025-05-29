import 'package:flutter/material.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/cart.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/ma.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/us.dart';
import 'package:rdsboxapp/screens/Settings%20Screens/users.dart';
import 'Settings Screens/Settings.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Caart(),
    map(),
    Users(),
    US(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.near_me_outlined), label: "map"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_sharp), label: "users"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ]),
      body: _pages[selectedIndex],
    );
  }
}

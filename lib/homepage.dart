import 'package:button_navigation_bar/About_page.dart';
import 'package:button_navigation_bar/account_page.dart';
import 'package:button_navigation_bar/home.dart';
import 'package:button_navigation_bar/pages.dart';
import 'package:button_navigation_bar/setting_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected_item = 0;

  void _navigate_bottom_bar(int index) {
    setState(() {
      _selected_item = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    settingpage(),
    Pages(),
    Account(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selected_item],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _navigate_bottom_bar,
        currentIndex: _selected_item,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Pages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Acount'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}

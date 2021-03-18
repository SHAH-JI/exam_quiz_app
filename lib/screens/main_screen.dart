import 'package:exam_quiz_app/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String id = "main_screen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void onItemSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
        backgroundColor: kMainThemeColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: "Stats",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kMainThemeColor,
        onTap: onItemSelect,
        unselectedItemColor: kTabColor,
        iconSize: 30.0,
        selectedFontSize: 18.0,
      ),
    );
  }
}

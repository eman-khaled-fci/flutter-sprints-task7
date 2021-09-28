import 'package:flutter/material.dart';
import 'package:flutter_sprintsday5/model/User.dart';
import 'package:flutter_sprintsday5/screens/Profile.dart';
import 'package:flutter_sprintsday5/screens/Settings.dart';
import 'package:flutter_sprintsday5/screens/StartPage.dart';
import 'package:flutter_sprintsday5/screens/detailScreen.dart';
import 'package:flutter_sprintsday5/services/UserService.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex=0;
List<Widget>pages=[
  StartPage(),
  Settings(),
  Profile()
];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.red,
          ),



        ],
      ),

      body:pages[currentIndex]

      ,
    );
  }
}

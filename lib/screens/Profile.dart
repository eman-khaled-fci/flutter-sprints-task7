import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title: Text('Profile'),),
      body: Center(child: Text('Profile Page'),),
    );
  }
}

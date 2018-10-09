import 'package:flutter/material.dart';

import 'package:medicare/doctors.dart';
import 'package:medicare/medicines.dart';
import 'package:medicare/profile.dart';

class HomeDashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Text("Welcome"),
    );
  }
}


class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeDashPage(),
    DoctorsPage(),
    MedicinesPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: new Text("MediCare"),
        backgroundColor: Colors.blueGrey,
      ),
    body: _children[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
      onTap: onTabTapped,
      // fixedColor: Colors.blueGrey,
      currentIndex: _currentIndex, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.local_hospital),
          title: new Text('Doctor'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.healing),
          title: new Text('Medicines'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }



}
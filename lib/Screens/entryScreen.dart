import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toktok/Screens/HomeScreen.dart';
import 'package:toktok/Screens/addScreen.dart';
import 'package:toktok/Screens/profileScreen.dart';
import 'package:toktok/Screens/searchScreen.dart';
import 'package:toktok/Screens/shortsScreen.dart';
class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  int currentIndex = 0;
  List pages = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    ShortsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        selectedIconTheme: IconThemeData(color: Color(0xffff4d67)),
        selectedLabelStyle: TextStyle(color: Color(0xffff4d67)),
        selectedItemColor: Color(0xffff4d67),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        showSelectedLabels: true,
        currentIndex: currentIndex,

        onTap: (value) {
          setState(() {
            currentIndex = value;
          });

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle,color: Color(0xffff4d67),size: 40,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Home"),
        ],
      ),
    );
  }
}

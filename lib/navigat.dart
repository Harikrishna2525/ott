import 'package:flutter/material.dart';
import 'package:ott/Home%20page.dart';
import 'package:ott/download.dart';
// import 'package:ott/login.dart';
import 'package:ott/search.dart';
import 'package:ott/settings.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int currentindex = 0;

  final na = [
    home(),
    sear(),
    downl(),
    sett(),
  ];
  void Hari (index)
  {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: na[currentindex]
      ,bottomNavigationBar: BottomNavigationBar(
      fixedColor: Colors.yellowAccent,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.black),
        ],
        currentIndex: currentindex,
        onTap: Hari,
      ),

    );
  }
}

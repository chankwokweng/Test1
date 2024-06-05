// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasks/components/bottom_nav_bar.dart';
import 'package:tasks/pages/about_page.dart';
import 'package:tasks/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  final List<Widget> __children=[
    FeedPage(),   //0
    AboutPage(),  //1
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: __children[_currentIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavBarItem> [
          BottomNavBarItem(
            title: Text("Feed"),
            icon: Icon(Icons.home)),
          BottomNavBarItem(
            title: Text("Me"),
            icon: Icon(Icons.person)),
          // BottomNavBarItem(
          //   title: Text("Chat"),
          //   icon: Icon(Icons.chat_bubble)),
        ]
      ),
    );
  }
}
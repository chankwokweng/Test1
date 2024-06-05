import 'package:flutter/material.dart';
import 'package:tasks/pages/about_page.dart';
import 'package:tasks/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: AboutPage(),
    );
  }
}
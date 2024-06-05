// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasks/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Tasks App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_practice/IntroScreen/IntroScreen.dart';
import 'package:ui_practice/ProductDetail.dart';
import 'package:ui_practice/RegisterUser/Mainpage.dart';
import 'package:ui_practice/myscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      routes: {
        '/SignUpScreens': (context) => SignUpScreens(),
      },
      debugShowCheckedModeBanner: false,
      home: Myscreen(),
    );
  }
}

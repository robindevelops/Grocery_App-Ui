// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_practice/RegisterUser/Login_page.dart';
import 'package:ui_practice/RegisterUser/Signuppage.dart';

class SignUpScreens extends StatefulWidget {
  const SignUpScreens({super.key});

  @override
  State<SignUpScreens> createState() => _SignUpScreensState();
}

class _SignUpScreensState extends State<SignUpScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                SizedBox(height: 90),
                Image.asset('lib/images/grocery.png', height: 60),
                Text(
                  "ZOMO FOOD",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 29, 142, 33),
                  ),
                ),
                Text(
                  "Store",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 29, 142, 33),
                      fontWeight: FontWeight.w500),
                ),
                TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  indicatorColor: Colors.green,
                  indicatorWeight: 3,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: "SignUp",
                    ),
                    Tab(
                      text: "Login",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: const [
                      SignUpPage(),
                      LoginPage(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

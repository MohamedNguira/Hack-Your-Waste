import 'package:flutter/material.dart';

import 'package:HackYourWaste/screens/cupon_screen.dart';

import 'package:HackYourWaste/screens/homescreen.dart';

import 'package:HackYourWaste/screens/landing_screen.dart';

import 'package:HackYourWaste/screens/scanner.dart';

import 'package:HackYourWaste/screens/profile_screen.dart';

import 'package:HackYourWaste/screens/signin.dart';

import 'package:HackYourWaste/screens/verify_mail_screen.dart';

import 'package:HackYourWaste/screens/signup.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: landingScreen(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//   @override
//   State<HomePage> createState() => HomePageState();
// }

// class HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white, body: SignUpPage());
//   }
// }

import 'package:flutter/material.dart';
import 'package:HackYourWaste/constants.dart';
import 'package:HackYourWaste/screens/homescreen.dart';
import 'package:HackYourWaste/screens/verify_mail_screen.dart';

import '../widgets/see.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  State<SignUpPage> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  late String email;
  late String password;
  bool household = true;
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    Widget o = See(onClick: () {
      setState(() {
        showPassword = !showPassword;
      });
    });
    Size size = MediaQuery.of(context).size;
    double h = size.height, w = size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: SizedBox(
                width: w * 0.872,
                child: ListView(children: [
                  SizedBox(height: h * 0.15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        onPressed: () {
                          setState(() {
                            household = true;
                          });
                        },
                        child: Container(
                          width: w * 0.32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: household ? Color(0xff2e3e5c) : Colors.white,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 19,
                          ),
                          child: Text(
                            "Household",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  household ? Colors.white : Color(0xffc3c3c3),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.10,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        onPressed: () {
                          setState(() {
                            household = false;
                          });
                        },
                        child: Container(
                          width: w * 0.32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: household ? Colors.white : Color(0xff2e3e5c),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 19,
                          ),
                          child: Text(
                            "Business",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  household ? Color(0xffc3c3c3) : Colors.white,
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.10,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: h * 0.01),
                  const Text(
                    "Please enter your Infos here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9fa5c0),
                      fontSize: 15,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.50,
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  TextField(
                    obscureText: false,
                    onChanged: (String value) async {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: household ? 'Full Name' : 'Company Name',
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  TextField(
                    obscureText: false,
                    onChanged: (String value) async {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Email or phone number',
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  TextField(
                    obscureText: !showPassword,
                    onChanged: (String value) async {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: o,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: h * 0.08),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const verifyMailScreen()),
                      );
                    },
                    child: Container(
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xff1fcc79),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 19,
                      ),
                      child: const Text(
                        "Sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do you have an account?",
                        style: TextStyle(
                          color: Color(0xff2d3d5c),
                          fontSize: 15,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.50,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Log in",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xff1fcc79),
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.50,
                            ),
                          ))
                    ],
                  )
                ]))),
      ),
    );
  }
}

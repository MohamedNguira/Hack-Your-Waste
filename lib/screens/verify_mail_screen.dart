import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:HackYourWaste/dimensions.dart';
import 'package:HackYourWaste/screens/homescreen.dart';

import '../constants.dart';

class verifyMailScreen extends StatelessWidget {
  const verifyMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
          child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Check your email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff3d5480),
                  fontSize: 17,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.50,
                ),
              ),
              const SizedBox(height: 20),
              const Text("We've sent the code to your email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff9fa5c0),
                    fontSize: 15,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.50,
                  )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Wrap(
                    children: List.generate(
                      4,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        //padding: const EdgeInsets.only(bottom: 20, left: 15),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xffd0dae9),
                            width: 1,
                          ),
                          color: Colors.white,
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xff3d5480),
                            fontSize: 25,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.24,
                          ),
                          cursorHeight: 30,
                          cursorColor: Color(0xffd0dae9),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text.rich(TextSpan(
                  text: 'code expires in :  ',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: '03:12',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffFF6464),
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ])),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Constants.darkgreencolor,
                  ),
                  child: const Center(
                    child: Text(
                      "Verify",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Signika",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: (() => Null),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: Color(0xffd0dae9),
                      width: 2,
                    ),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "Send again",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9fa5c0),
                      fontSize: 15,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.10,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

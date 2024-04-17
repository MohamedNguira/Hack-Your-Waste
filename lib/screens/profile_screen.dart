import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 350,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
                  height: 100,
                  width: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    'assets/images/wael.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "32",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3d5480),
                            fontSize: 17,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.50,
                          ),
                        ),
                        Text(
                          "Coupons",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff9fa5c0),
                            fontSize: 12,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "32",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3d5480),
                            fontSize: 17,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.50,
                          ),
                        ),
                        Text(
                          "Coupons",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff9fa5c0),
                            fontSize: 12,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "32",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3d5480),
                            fontSize: 17,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.50,
                          ),
                        ),
                        Text(
                          "Coupons",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff9fa5c0),
                            fontSize: 12,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.50,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const Text(
                    "My Coupons",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff3d5480),
                      fontSize: 15,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.10,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 255, 255, 255)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/kfc-logo.png'),
                                const SizedBox(width: 30),
                                VerticalDivider(
                                  color: Color(0xFF616161),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "25% OFF",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "KFC ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Valid for total amount of 100 dt",
                                      style: TextStyle(
                                        color: Color(0x4c000000),
                                        fontSize: 10,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

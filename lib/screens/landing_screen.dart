import 'package:flutter/material.dart';
import 'package:HackYourWaste/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:HackYourWaste/screens/signin.dart';

class landingScreen extends StatelessWidget {
  landingScreen({Key? key}) : super(key: key);
  List LandingPagetext = [
    "Sort out waste,get them Recycled,and \nget Rewarded",
    "Sort out waste and get them recycled",
    "Make good ude of recycled wastes \n and savd cash"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //decoration: BoxDecoration(color: Constants.greencolor),

        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/images/landingScreenImg.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                top: 380,
                left: 0,
                right: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/Ellipse2.png",
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text.rich(TextSpan(
                              text: 'Recycle the Present \n Save the ',
                              style: const TextStyle(
                                fontSize: 25,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'Future',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.darkgreencolor),
                                )
                              ])),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          height: 150,
                          child: ListView.builder(
                              //controller: pageControler,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 40, right: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        LandingPagetext[index],
                                        style: const TextStyle(
                                          color: Color(0x72000000),
                                          fontSize: 17,
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      DotsIndicator(
                                        dotsCount: 3,
                                        position: index.toDouble(),
                                        decorator: DotsDecorator(
                                          activeColor: Constants.darkgreencolor,
                                          size: const Size.square(9.0),
                                          activeSize: const Size(18.0, 9.0),
                                          activeShape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              })),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()),
                            );
                          }),
                          child: Container(
                            width: 240,
                            height: 72,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Constants.darkgreencolor,
                            ),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "Signika",
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.25,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}

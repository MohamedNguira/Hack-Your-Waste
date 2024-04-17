import 'package:flutter/material.dart';
import 'package:HackYourWaste/screens/cupon_screen.dart';
import 'package:HackYourWaste/screens/homescreen.dart';
import 'package:HackYourWaste/screens/landing_screen.dart';
import 'package:HackYourWaste/screens/signin.dart';
import 'package:HackYourWaste/screens/signup.dart';

class HomeSubscreen extends StatefulWidget {
  const HomeSubscreen({Key? key}) : super(key: key);
  @override
  State<HomeSubscreen> createState() => HomeSubscreenState();
}

int _selectedIndex = 0;

class HomeSubscreenState extends State<HomeSubscreen> {
  Widget createArticle(String url, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          url,
          height: 60,
          width: 80,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff657c89),
            fontSize: 12,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }

  Widget createCoupon(String url, String title, String desc, String date) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CuponScreen()),
        );
      }),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            url,
            height: 80,
            width: 100,
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Valid until $date",
                style: TextStyle(
                  color: Color(0x4c000000),
                  fontSize: 10,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height, w = size.width;
    return SingleChildScrollView(
      child: Center(
          child: SizedBox(
              width: w * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.list),
                      const SizedBox(width: 60),
                      const Icon(
                        Icons.location_on_rounded,
                        color: Color(0xff27ae60),
                      ),
                      const Text(
                        "Nabeul, TUN",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 60),
                      SizedBox(width: 40, child: HomeScreenState.profilepic)
                    ],
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  const Text(
                    "Hey Wael !",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Get Coupons while saving the world',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: const Color.fromRGBO(101, 124, 137, 1),
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.8125),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Articles",
                        style: TextStyle(
                          color: Color(0xff3d3d3b),
                          fontSize: 20,
                          fontFamily: "SF Pro Text",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 220),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff797b70),
                          fontSize: 14,
                          fontFamily: "SF Pro Text",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  createArticle(
                      'https://www.saiindustrial.com/wp-content/uploads/2019/07/recycling-2.jpg',
                      'The impact of plastic on the environment'),
                  SizedBox(height: 20),
                  createArticle(
                      'https://www.ashevillenc.gov/wp-content/uploads/2020/07/Recycle-right-illustration-768x614.jpg',
                      'How Recycling works and why it’s important'),
                  SizedBox(height: 20),
                  createArticle('https://en.pimg.jp/054/053/510/1/54053510.jpg',
                      'How Recycling works and why it’s important'),
                  SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Coupons",
                        style: TextStyle(
                          color: Color(0xff3d3d3b),
                          fontSize: 20,
                          fontFamily: "SF Pro Text",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 220),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xff797b70),
                          fontSize: 14,
                          fontFamily: "SF Pro Text",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 27,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "All",
                              style: TextStyle(
                                color: Color(0xff11ac6a),
                                fontSize: 17,
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 25),
                            Text(
                              "Food",
                              style: TextStyle(
                                color: Color(0x4c000000),
                                fontSize: 17,
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 24.80),
                            Text(
                              "Shop",
                              style: TextStyle(
                                color: Color(0x4c000000),
                                fontSize: 17,
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 24.80),
                            Text(
                              "Travel",
                              style: TextStyle(
                                color: Color(0x4c000000),
                                fontSize: 17,
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 24.80),
                            Text(
                              "Other",
                              style: TextStyle(
                                color: Color(0x4c000000),
                                fontSize: 17,
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 20),
                  createCoupon(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/b/bf/KFC_logo.svg/1200px-KFC_logo.svg.png',
                      '25% OFF',
                      'KFC',
                      "1 February "),
                  SizedBox(height: 20),
                  createCoupon(
                      'https://play-lh.googleusercontent.com/YcQjSQl5nKZzwT1i_Sq98jivk9eqUXCeQfkg0g_phMMaejQ3MLHEXEXgbRL1DQSb7vRS',
                      'Free Account',
                      'Reedz',
                      "5 February ")
                ],
              ))),
    );
  }
}

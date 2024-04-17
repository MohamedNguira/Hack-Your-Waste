import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:HackYourWaste/dimensions.dart';
import 'package:HackYourWaste/screens/homescreen.dart';

class CuponScreen extends StatefulWidget {
  CuponScreen({Key? key}) : super(key: key);

  @override
  State<CuponScreen> createState() => _CuponScreenState();
}

class _CuponScreenState extends State<CuponScreen> {
  double iconsize = 20;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  Text(
                    "KFC Coupon",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff351c1c),
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.menu),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                height: 600,
                child: CouponCard(
                  curvePosition: 250,
                  firstChild: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/kfc-logo.png"),
                            const Text(
                              "25% OFF",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Get 25% at your next KFC buy ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Reedeamble at all KFC restaurants in Tunisia.\nNot valid with any other discounts and promotions.\n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Not valid with any other discounts and promotions.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "No cash value.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  secondChild: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Divider(thickness: 0.7),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Total amount:",
                                style: TextStyle(
                                  color: Color(0xff9b9b9b),
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "500 point",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xff222222),
                                  fontSize: 18,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: ((context) => AlertDialog(
                                        content: Container(
                                          height: 500,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 20),
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                    color: Color(0xff1FCC79)),
                                                child: const Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                  size: 50,
                                                ),
                                              ),
                                              const SizedBox(height: 20),
                                              const Text(
                                                "170 Points are left in your pocket",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff3d5480),
                                                  fontSize: 22,
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 0.50,
                                                ),
                                              ),
                                              const SizedBox(height: 20),
                                              const Text(
                                                "Your Coupone has been added,You can check  it on your profile",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff2d3d5c),
                                                  fontSize: 15,
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.50,
                                                ),
                                              ),
                                              const SizedBox(height: 50),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            HomeScreen()),
                                                  );
                                                },
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 30,
                                                            vertical: 20),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32),
                                                      color: Color(0xff22834b),
                                                    ),
                                                    child: const Text(
                                                      "Back to Home",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontFamily: "Inter",
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: 0.10,
                                                      ),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                      )));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3fd32525),
                                      blurRadius: 8,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                  color: Color(0xff22834b),
                                  borderRadius: BorderRadius.circular(25)),
                              child: const Text(
                                "Buy Coupon",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.copy_all_outlined,
                                color: Color(0xff004064),
                              ),
                              Text(
                                "Valid until 03 March 2022",
                                style: TextStyle(
                                  color: Color(0x4c000000),
                                  fontSize: 10,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.info_outline_rounded,
                                color: Color(0xff004064),
                              )
                            ],
                          )
                        ],
                      )),
                  backgroundColor: Color.fromARGB(255, 246, 246, 246),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: iconsize), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, size: iconsize), label: "Shop"),
          BottomNavigationBarItem(
              icon: ClipOval(
                child: Material(
                  color: Color(0xff27ae60), // Button color
                  child: InkWell(
                    splashColor: Color(0xff27ae60), // Splash color
                    onTap: () {},
                    child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(Icons.qr_code_scanner,
                            color: Colors.white, size: iconsize)),
                  ),
                ),
              ),
              label: "Scan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle, size: iconsize),
              label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: iconsize), label: "Notification"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff27ae60),
        onTap: _onItemTapped,
      ),
    );
  }
}

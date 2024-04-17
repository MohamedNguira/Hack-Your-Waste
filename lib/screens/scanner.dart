import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'homescreen.dart';

class Scanner extends StatefulWidget {
  @override
  ScannerState createState() => ScannerState();
}

class ScannerState extends State<Scanner> {
  String _scanBarcode = 'Unknown';

  @override
  void initState() {
    scanBarcodeNormal();
    super.initState();
  }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }


  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(
            content: Container(
              height: 400,
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
                    "20 Points have been added to your pocket",
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
                    "You can check your total points on your profile",
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
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold());
  }
}
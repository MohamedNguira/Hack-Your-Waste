import 'package:flutter/cupertino.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get.dart';

class Dimensions {
  static double ScreenHeight = Get.context!.height;
  static double ScreenWidth = Get.context!.width;
  static List<double> dim = [];
  void main() {
    for (int i = 1; i < 600; i++) {
      dim.add(ScreenHeight / i);
    }
  }
}

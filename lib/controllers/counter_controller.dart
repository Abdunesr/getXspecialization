import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // Observable variable

  void increment() {
    count++;
    if (count > 10) {
      Get.snackbar(
        "Limit Reached",
        "Count cannot exceed 10",
        snackPosition: SnackPosition.BOTTOM,
        backgroundGradient: LinearGradient(
          colors: [Colors.red, Colors.redAccent],
        ),
        colorText: Colors.white,
      );
    }
  }

  void decrement() {
    count--;
  }
}

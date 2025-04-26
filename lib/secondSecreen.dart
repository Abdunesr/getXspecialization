import 'package:authget/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondsecreen extends StatelessWidget {
  final CounterController controller = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: ${controller.count.value}",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back(); // Navigate back to the previous screen
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}

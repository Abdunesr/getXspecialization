import 'package:authget/secondSecreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:authget/controllers/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Counter Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get X Example"),
        leading: IconButton(
          onPressed: () => {Get.to(Secondsecreen())},
          icon: Icon(Icons.next_plan),
        ),
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Count: ${counterController.count.value}",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
      ),
    );
  }
}

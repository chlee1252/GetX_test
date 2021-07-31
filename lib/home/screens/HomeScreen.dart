import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/home/screens/OtherScreen.dart';
import 'package:get_x_practice/home/service/Counter.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Counter counter = Get.put(Counter());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() => Text("Clicks: ${counter.count}"))),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(child: ElevatedButton(
            child: Text("Go to Other"),
            onPressed: () => Get.to(OtherScreen()))),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add), onPressed: counter.increment)
    );
  }
}

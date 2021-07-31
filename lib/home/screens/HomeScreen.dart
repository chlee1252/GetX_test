import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/home/screens/OtherScreen.dart';
import 'package:get_x_practice/home/service/Counter.dart';
import 'package:get_x_practice/home/service/SampleAPITest.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Counter counter = Get.put(Counter());
    final SampleAPITest api = Get.put(SampleAPITest());

    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text("Clicks: ${counter.count}"),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Other"),
          onPressed: () => Get.to(
            OtherScreen(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() => api.getInfo(),
      ),
    );
  }
}

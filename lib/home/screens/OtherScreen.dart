import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/home/service/Counter.dart';

class OtherScreen extends StatelessWidget {
  final Counter c = Get.find();

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}

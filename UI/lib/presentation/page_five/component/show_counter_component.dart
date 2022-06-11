import 'package:flutter/material.dart';
import 'package:learning/controller/CounterController.dart';
import 'package:get/get.dart';

class ShowCounterFive extends StatelessWidget {
  CounterController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text("${_controller.counter.value}"));
  }
}

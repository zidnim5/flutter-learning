import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning/controller/CounterController.dart';
import 'package:learning/presentation/page_five/component/show_counter_component.dart';

class PageFive extends StatelessWidget {
  CounterController _counter = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.increment();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ShowCounterFive(),
      ),
    );
  }
}

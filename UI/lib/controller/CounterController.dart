import 'package:get/get.dart';

class CounterController extends GetxController {
  Rx<int> counter = Rx<int>(0);

  void increment() {
    counter.value++;
    update();
  }

  void decrement() {
    counter.value--;
    update();
  }
}

import 'package:simple_animations/simple_animations.dart';
import 'package:get/get.dart';

class DayOneController extends GetxController {
  // CustomAnimationControl _control = CustomAnimationControl.play;

  final counter = 1.obs;

  int getCounter() {
    return counter.value;
  }

  void increment() {
    counter.value++;
  }
  //
  // CustomAnimationControl getControl() {
  //   return _control;
  // }
  //
  // void toggleControl() {
  //   if (_control == CustomAnimationControl.play) {
  //     _control = CustomAnimationControl.playReverse;
  //   } else {
  //     _control = CustomAnimationControl.play;
  //   }
  //   update();
  // }
}

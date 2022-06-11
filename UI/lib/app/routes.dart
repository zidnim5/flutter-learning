import 'package:get/get.dart';
import 'package:learning/home.dart';
import 'package:learning/presentation/page_five/page_five.dart';
import 'package:learning/presentation/page_four/page_four.dart';
import 'package:learning/presentation/page_one/page_one.dart';
import 'package:learning/presentation/page_six/page_six.dart';
import 'package:learning/presentation/page_three/page_three.dart';
import 'package:learning/presentation/page_two/page_two.dart';

class Routes {
  static final List<GetPage> register = [
    GetPage(
      name: "/",
      page: () => Home(),
    ),
    GetPage(
      name: "/page_one",
      page: () => PageOne(),
    ),
    GetPage(
      name: "/page_two",
      page: () => PageTwo(),
    ),
    GetPage(
      name: "/page_three",
      page: () => PageThree(),
    ),
    GetPage(
      name: "/page_four",
      page: () => PageFour(),
    ),
    GetPage(
      name: "/page_five",
      page: () => PageFive(),
    ),
    GetPage(
      name: "/page_six",
      page: () => PageSix(),
    ),
  ];
}

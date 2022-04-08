import 'package:get/get.dart';
import 'package:learning/home.dart';
import 'package:learning/presentation/page_one/page_one.dart';
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
    )
  ];
}

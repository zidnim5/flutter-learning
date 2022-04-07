import 'package:get/get.dart';
import 'package:learning/home.dart';
import 'package:learning/presentation/page_one/page_one.dart';

class Routes {
  static final List<GetPage> register = [
    GetPage(
      name: "/",
      page: () => Home(),
    ),
    GetPage(
      name: "/page_one",
      page: () => PageOne(),
    )
  ];
}

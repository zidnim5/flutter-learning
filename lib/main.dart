import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning/app/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Learning",
      debugShowCheckedModeBanner: false,
      getPages: Routes.register,
      initialRoute: "/",
    );
  }
}

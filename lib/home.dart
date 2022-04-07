import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning/data/data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: Data.listMenu.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Card(
                        Data.listMenu[index].title, Data.listMenu[index].route);
                  }),
            ),
          ),
        ],
      ),
    ));
  }

  Widget Card(String title, String route) {
    return GestureDetector(
      onTap: () => {Get.toNamed(route)},
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}

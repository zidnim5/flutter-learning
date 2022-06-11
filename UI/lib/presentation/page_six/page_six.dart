import 'package:flutter/material.dart';
import 'package:learning/controller/ProductController.dart';
import 'package:learning/data/data.dart';
import 'package:get/get.dart';

class PageSix extends StatelessWidget {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Stack(
            children: [
              Positioned(
                  child: ListView.builder(
                      itemCount: Data.products.length,
                      itemBuilder: (ctx, idx) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(Data.products[idx].name),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("-"),
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      primary: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    Data.products[idx].quantity
                                        .toStringAsFixed(0),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("+"),
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      primary: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      })),
              Positioned(
                bottom: 0,
                width: size.width,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Go to chart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.all(25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

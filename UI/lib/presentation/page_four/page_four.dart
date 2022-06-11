import 'package:flutter/material.dart';
import 'package:learning/presentation/page_four/component/icon_button_component.dart';
import 'package:get/get.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                // padding: const EdgeInsets.all(8),
                height: 70,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                      blurRadius: 4,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomIconButton(
                      icon: Icons.home,
                      topLeft: true,
                    ),
                    BottomIconButton(icon: Icons.home),
                    BottomIconButton(icon: Icons.home),
                    BottomIconButton(
                      icon: Icons.home,
                      topRight: true,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

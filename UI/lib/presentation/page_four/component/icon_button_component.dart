import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  final bool? topLeft;
  final bool? topRight;
  final IconData icon;
  const BottomIconButton(
      {Key? key, required this.icon, this.topRight, this.topLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft == true ? 16 : 0),
            topRight: Radius.circular(topRight == true ? 16 : 0)),
        child: Container(
            height: 70,
            width: size.width * 0.25,
            child: TextButton(
              onPressed: () {},
              child: Icon(
                icon,
                color: Colors.black,
              ),
            )));
  }
}

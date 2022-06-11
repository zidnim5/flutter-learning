import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final int bgColor;
  final String title;
  final double textSize;
  final Color textColor;
  final Function callback;

  const CustomButton(
      {Key? key,
      required this.title,
      required this.textSize,
      required this.callback,
      required this.textColor,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Color(bgColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: () => callback(title),
        child: Center(
          child: Text(
            "${title}",
            style: TextStyle(fontSize: textSize, color: textColor),
          ),
        ),
      ),
    );
  }
}

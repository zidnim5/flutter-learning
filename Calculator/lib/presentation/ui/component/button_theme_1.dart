import 'package:flutter/material.dart';

class ButtonTheme1 extends StatelessWidget {
  final Color? bgColor;
  final String text;
  final int? textSize;
  final Color? textColor;

  const ButtonTheme1(
      {Key? key,
      this.bgColor,
      this.textColor,
      required this.text,
      this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 5,
      width: text == "=" ? 90 * 2 : 90,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.transparent,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
        ),
        onPressed: () {},
        child: Text(
          "${text}",
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: textSize?.toDouble() ?? 32,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

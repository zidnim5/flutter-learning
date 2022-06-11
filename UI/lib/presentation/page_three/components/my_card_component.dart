import 'package:flutter/material.dart';

class MyCardThree extends StatelessWidget {
  final String tabungan;
  final String card_number;
  final String expired;
  final Color primaryColor;
  final Color secondaryColor;
  const MyCardThree(
      {Key? key,
      required this.tabungan,
      required this.card_number,
      required this.expired,
      required this.primaryColor,
      required this.secondaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(30),
      width: size.width * 0.75,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(4, 4),
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment(0.9, 0),
          colors: [primaryColor, secondaryColor],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(
              "VISA",
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2,
                color: Colors.white.withOpacity(0.5),
              ),
            )
          ]),
          SizedBox(
            height: 8,
          ),
          Text(
            "Balance",
            style: TextStyle(
              fontSize: 16,
              letterSpacing: 1,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "${tabungan}",
            style: TextStyle(
              fontSize: 26,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "*** ${card_number}",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Text(
                "${expired}",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

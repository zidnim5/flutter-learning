import 'package:flutter/material.dart';

class CategoryCardThree extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const CategoryCardThree(
      {Key? key, required this.title, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                  blurRadius: 8,
                )
              ]),
          child: Icon(
            icon,
            size: 35,
            color: color,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          "${title}",
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 1,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

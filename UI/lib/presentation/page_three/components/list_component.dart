import 'package:flutter/material.dart';

class ListThree extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  final Color color;
  const ListThree(
      {Key? key,
      required this.icon,
      required this.title,
      required this.desc,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: color,
                  ),
                  child: Icon(
                    icon,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${title}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${desc}",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.grey,
            size: 25,
          )
        ],
      ),
    );
  }
}

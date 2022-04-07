import 'package:flutter/material.dart';

class FaceEmoticon extends StatelessWidget {
  final String emoticon;
  final String mood;
  const FaceEmoticon({Key? key, required this.emoticon, required this.mood})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.purple[600],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "${emoticon}",
            style: TextStyle(fontSize: 24),
          )),
      SizedBox(
        height: 8,
      ),
      Text(
        "${mood}",
        style: TextStyle(
          color: Colors.white70,
          fontSize: 12,
          letterSpacing: 1,
        ),
      )
    ]);
  }
}

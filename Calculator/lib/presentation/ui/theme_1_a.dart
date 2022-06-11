import 'package:calculator/presentation/ui/component/button_theme_1.dart';
import 'package:calculator/presentation/ui/component/button_theme_1_a.dart';
import 'package:flutter/material.dart';

class Theme1a extends StatefulWidget {
  const Theme1a({Key? key}) : super(key: key);

  @override
  State<Theme1a> createState() => _Theme1aState();
}

class _Theme1aState extends State<Theme1a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Calculator",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "5000 + 6000",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 2.0),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "11000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 4.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme1a(
                          text: "AC",
                          bgColor: Colors.red,
                          textColor: Colors.white,
                        ),
                        ButtonTheme1a(
                          text: "C",
                          textColor: Colors.blueAccent,
                        ),
                        ButtonTheme1a(
                          text: "<",
                          textColor: Colors.blueAccent,
                        ),
                        ButtonTheme1a(
                          text: "/",
                          textColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme1a(
                          text: "1",
                        ),
                        ButtonTheme1a(
                          text: "2",
                        ),
                        ButtonTheme1a(
                          text: "3",
                        ),
                        ButtonTheme1a(
                          text: "X",
                          textColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme1a(
                          text: "4",
                        ),
                        ButtonTheme1a(
                          text: "5",
                        ),
                        ButtonTheme1a(
                          text: "6",
                        ),
                        ButtonTheme1a(
                          text: "+",
                          textColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme1a(
                          text: "7",
                        ),
                        ButtonTheme1a(
                          text: "8",
                        ),
                        ButtonTheme1a(
                          text: "9",
                        ),
                        ButtonTheme1a(
                          text: "-",
                          textColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonTheme1a(
                          text: ".",
                        ),
                        ButtonTheme1a(
                          text: "0",
                        ),
                        ButtonTheme1a(
                          text: "=",
                          textColor: Colors.white,
                          bgColor: Colors.blue,
                        ),
                      ],
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

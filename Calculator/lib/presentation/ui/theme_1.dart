import 'package:calculator/presentation/ui/component/button_theme_1.dart';
import 'package:flutter/material.dart';

class Theme1 extends StatefulWidget {
  const Theme1({Key? key}) : super(key: key);

  @override
  State<Theme1> createState() => _Theme1State();
}

class _Theme1State extends State<Theme1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0c263b),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              color: Colors.white,
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
                                  color: Colors.white70,
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
                                  color: Colors.white,
                                  fontSize: 36,
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
                    border: Border(
                      top: BorderSide(color: Colors.lightBlue, width: 2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme1(
                            text: "AC",
                            bgColor: Colors.red,
                            textColor: Colors.white,
                          ),
                          ButtonTheme1(
                            text: "C",
                            textColor: Colors.blueAccent,
                          ),
                          ButtonTheme1(
                            text: "<",
                            textColor: Colors.blueAccent,
                          ),
                          ButtonTheme1(
                            text: "/",
                            textColor: Colors.blueAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme1(
                            text: "1",
                          ),
                          ButtonTheme1(
                            text: "2",
                          ),
                          ButtonTheme1(
                            text: "3",
                          ),
                          ButtonTheme1(
                            text: "X",
                            textColor: Colors.blueAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme1(
                            text: "4",
                          ),
                          ButtonTheme1(
                            text: "5",
                          ),
                          ButtonTheme1(
                            text: "6",
                          ),
                          ButtonTheme1(
                            text: "+",
                            textColor: Colors.blueAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme1(
                            text: "7",
                          ),
                          ButtonTheme1(
                            text: "8",
                          ),
                          ButtonTheme1(
                            text: "9",
                          ),
                          ButtonTheme1(
                            text: "-",
                            textColor: Colors.blueAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme1(
                            text: ".",
                          ),
                          ButtonTheme1(
                            text: "0",
                          ),
                          ButtonTheme1(
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
      ),
    );
  }
}

import 'package:calculator/presentation/ui/component/button.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? a;
  String? b;
  String operation = '';
  String textToDisplay = '0';
  String result = '0';
  double tmpResult = 0;
  bool isMin = false;

  String regexZero(String value) {
    value = value.replaceAll(".", "");
    if (value[0] == "0") {
      return value.substring(1);
    }
    return value;
  }

  void reset() {
    setState(() {
      a = null;
      b = null;
      operation = '';
      textToDisplay = '0';
      result = '0';
      tmpResult = 0;
    });
  }

  void calculate() {
    setState(() {
      if (operation == "+") {
        tmpResult = double.parse(a ?? "0") + double.parse(b ?? "0");
        a = tmpResult.toString();
        textToDisplay = tmpResult.toString();
        result = a.toString() + " + " + b.toString() + " = " + textToDisplay;
      }
      if (operation == "-") {
        tmpResult = double.parse(a ?? "0") - double.parse(b ?? "0");
        textToDisplay = tmpResult.toString();
        result = a.toString() + " - " + b.toString() + " = " + textToDisplay;
      }
      if (operation == "/") {
        tmpResult = double.parse(a ?? "0") / double.parse(b ?? "0");
        textToDisplay = tmpResult.toString();
        result = a.toString() + " / " + b.toString() + " = " + textToDisplay;
      }
      if (operation == "x") {
        tmpResult = double.parse(a ?? "0") * double.parse(b ?? "0");
        textToDisplay = tmpResult.toString();
        result = a.toString() + " * " + b.toString() + " = " + textToDisplay;
      } else {}
      a = tmpResult.toString();
      b = null;
    });
  }

  void btnClick(String btnVal) {
    if (btnVal == "=") {
      calculate();
      operation = "";
    } else if (btnVal == "AC") {
      setState(() {
        reset();
      });
    } else if (btnVal == "+/-" || btnVal == "<" || btnVal == "C") {
      print("Is cooming");
    } else if (btnVal == '/' ||
        btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x') {
      setState(() {
        if (b != null) {
          calculate();
        } else {
          result = a.toString() + " " + operation;
        }
        operation = btnVal;
      });
    } else {
      setState(() {
        if (operation == "") {
          reset();
          a = regexZero(a ?? "0") + btnVal;
          textToDisplay = a.toString();
          result = a.toString();
        } else {
          b = regexZero(b ?? "0") + btnVal;
          textToDisplay = b.toString();
          result =
              a.toString() + " " + operation.toString() + " " + b.toString();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      backgroundColor: Color(0xFF28527a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "${result}",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "${textToDisplay}",
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  title: "AC",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "C",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "<",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFFf4d160),
              CustomButton(
                  title: "/",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFFf4d160),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  title: "9",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "8",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "7",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "x",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFFf4d160),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  title: "6",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "5",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "4",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "-",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFFf4d160),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  title: "3",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "2",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "1",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "+",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFFf4d160),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  title: "+/-",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "0",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "00",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFF8ac4d0),
              CustomButton(
                  title: "=",
                  callback: btnClick,
                  textSize: 24,
                  textColor: Colors.black,
                  bgColor: 0xFFf4d160),
            ],
          ),
        ],
      ),
    );
  }
}

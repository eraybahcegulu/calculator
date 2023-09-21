import 'package:flutter/material.dart';
import 'dart:math';
import 'package:math_expressions/math_expressions.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesap Makinesi',
      theme: ThemeData(
        textTheme: GoogleFonts.newsCycleTextTheme(),
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String equation = '';
  String result = '';

  void updateEquation(String value) {
    setState(() {
      equation += value;

      if (equation.startsWith("--")) {
        equation = "";
        result = "iki '-' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("/")) {
        equation = "";
        result = "Başlangıç '/' olamaz";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("+")) {
        equation = "";
        result = "Başlangıç '+' olamaz";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("*")) {
        equation = "";
        result = "Başlangıç '*' olamaz";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith(".")) {
        equation = "";
        result = "Başlangıç '.' olamaz";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("00")) {
        equation = "";
        result = "Başlangıç 00 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("01")) {
        equation = "";
        result = "Başlangıç 01 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("02")) {
        equation = "";
        result = "Başlangıç 02 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("03")) {
        equation = "";
        result = "Başlangıç 03 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("04")) {
        equation = "";
        result = "Başlangıç 04 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("05")) {
        equation = "";
        result = "Başlangıç 05 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("06")) {
        equation = "";
        result = "Başlangıç 06 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("07")) {
        equation = "";
        result = "Başlangıç 07 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("08")) {
        equation = "";
        result = "Başlangıç 08 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.startsWith("09")) {
        equation = "";
        result = "Başlangıç 09 olamaz.";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("**")) {
        equation = "";
        result = "'*' ve '*' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("*/")) {
        equation = "";
        result = "'*' ve '/' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("*+")) {
        equation = "";
        result = "'*' ve '+' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("*-")) {
        equation = "";
        result = "'*' ve '-' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("*.")) {
        equation = "";
        result = "'*' ve '.' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("/*")) {
        equation = "";
        result = "'/' ve '*' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("//")) {
        equation = "";
        result = "'/' ve '/' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("/+")) {
        equation = "";
        result = "'/' ve '+' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("/-")) {
        equation = "";
        result = "'/' ve '-' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("/.")) {
        equation = "";
        result = "'/' ve '.' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("+*")) {
        equation = "";
        result = "'+' ve '*' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("+/")) {
        equation = "";
        result = "'+' ve '/' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("++")) {
        equation = "";
        result = "'+' ve '+' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("+-")) {
        equation = "";
        result = "'+' ve '-' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("+.")) {
        equation = "";
        result = "'+' ve '.' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("-*")) {
        equation = "";
        result = "'-' ve '*' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("-/")) {
        equation = "";
        result = "'-' ve '/' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("-+")) {
        equation = "";
        result = "'-' ve '+' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("--")) {
        equation = "";
        result = "'-' ve '-' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("-.")) {
        equation = "";
        result = "'-' ve '.' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains(".*")) {
        equation = "";
        result = "'.' ve '*' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("./")) {
        equation = "";
        result = "'.' ve '/' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains(".+")) {
        equation = "";
        result = "'.' ve '+' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains(".-")) {
        equation = "";
        result = "'.' ve '-' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      } else if (equation.contains("..")) {
        equation = "";
        result = "'.' ve '.' yan yana gelemez";
        Timer(Duration(seconds: 2), () {
          setState(() {
            result = "";
          });
        });
      }
    });
  }

  String eval(String expression) {
    try {
      expression = expression.replaceAll(' ', '');

      final mathContext = ContextModel();
      final expressionParser = Parser();
      final result = expressionParser
          .parse(expression)
          .evaluate(EvaluationType.REAL, mathContext);

      return result.toString();
    } catch (e) {
      return 'Hata';
    }
  }

  void calculateResult() {
    try {
      result = eval(equation);
      if (result.endsWith('.0')) {
        result = result.substring(0, result.length - 2);
      }
    } catch (e) {
      result = 'Sayı girin';
    }
    setState(() {});
  }

  void calculateResultSquareRoot() {
    try {
      double number = double.parse(equation);
      if (number < 0) {
        result = 'Pozitif sayı girin';
      } else {
        double squareRoot = sqrt(number);

        if (squareRoot == squareRoot.toInt().toDouble()) {
          result = squareRoot.toInt().toString();
        } else {
          result = squareRoot.toStringAsFixed(2);
        }

        equation = '√$equation';
      }
    } catch (e) {
      result = 'Sayı Girin';
    }
    setState(() {});
  }

  void calculateResultSin() {
    try {
      double? degrees = double.tryParse(equation);

      if (degrees != null) {
        double radians = degrees * (pi / 180);

        double sinValue = sin(radians);

        result = sinValue.toString();

        if (result.endsWith('.0')) {
          result = result.substring(0, result.length - 2);
        }
        equation = 'sin($equation)';
      } else {
        result = 'Sayı Girin';
      }
    } catch (e) {
      result = 'Sayı Girin';
    }

    setState(() {});
  }

  void calculateResultCos() {
    try {
      double? degrees = double.tryParse(equation);

      if (degrees != null) {
        double radians = degrees * (pi / 180);

        double cosValue = cos(radians);

        if (cosValue.abs() < 1e-15) {
          result = '0';
        } else {
          result = cosValue.toString();

          if (result.endsWith('.0')) {
            result = result.substring(0, result.length - 2);
          }
        }

        equation = 'cos($equation)';
      } else {
        result = 'Sayı Girin';
      }
    } catch (e) {
      result = 'Sayı Girin';
    }

    setState(() {});
  }

  void calculateResultLog() {
    try {
      double number = double.parse(equation);
      if (number <= 0) {
        result = 'Pozitif sayı girin';
      } else {
        double logarithm = log(number) / log(10);
        String formattedResult = logarithm
            .toStringAsFixed(2)
            .replaceAll(RegExp(r'0*$'), '')
            .replaceAll(RegExp(r'\.$'), '');
        if (formattedResult.endsWith('.00')) {
          formattedResult =
              formattedResult.substring(0, formattedResult.length - 3);
        }
        result = formattedResult;
        equation = 'log($equation)';
      }
    } catch (e) {
      result = 'Sayı Girin';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HESAP MAKİNESİ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 211, 222, 231),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 40.0,
                left: 20.0,
                right: 20.0,
              ),
              color: Colors.white,
              child: TextFormField(
                controller: TextEditingController(text: equation),
                readOnly: true,
                style: TextStyle(
                  fontSize: 25.0,
                ),
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 25.0,
                bottom: 16.0,
                left: 20.0,
                right: 20.0,
              ),
              color: Colors.white,
              child: Stack(
                children: [
                  TextFormField(
                    controller: TextEditingController(text: result),
                    readOnly: true,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: -8,
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_up),
                      onPressed: () {
                        setState(() {
                          equation = result;
                          result = '';
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(1.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            equation = '';
                            result = '';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'C',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          calculateResultSquareRoot();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 8, 62, 105),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '√x',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          calculateResultLog();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 8, 62, 105),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          'Log',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          calculateResultSin();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 8, 62, 105),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          'Sin',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          calculateResultCos();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 8, 62, 105),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          'Cos',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('7');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '7',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('8');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '8',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('9');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('4');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('5');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('6');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('1');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('2');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('3');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('.');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 77, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '.',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('0');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 211, 222, 231),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          calculateResult();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '=',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('*');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 77, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '*',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('/');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 77, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '/',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('+');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 77, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          updateEquation('-');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 74, 77, 77),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

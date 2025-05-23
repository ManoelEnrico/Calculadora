// ignore_for_file: unused_field, unused_import

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Calcular extends StatefulWidget {
  const Calcular({super.key});

  @override
  State<Calcular> createState() => _CalcularState();
}

class _CalcularState extends State<Calcular> {
  double valor1 = 0;
  double valor2 = 0;
  double resultado = 0;
  int operacao = 0;

  String result = "0";
  String saber = "";

  String par = "";
  String num1 = "1";

  int clickL1 = 1;
  int click2 = 1;

  limpar() {
    setState(() {
      saber = "";
      result = "0";
      clickL1 = 1;
      click2 = 1;
      resultado = 0;
      operacao = 0;
    });
  }

  parenteses() {
    if (clickL1 == 1) {
      par = "(";
      clickL1 = 2;
    } else if (clickL1 == 2) {
      par = ")";
      clickL1 = 1;
    }

    setState(() {
      click2 = 2;
      if (result == "0") {
        result = par;
      } else {
        result += par;
      }
    });
  }

  somar() {
    valor1 = double.parse(result);
    click2 = 1;
    operacao = 1;
    setState(() {
      result = "0";
      saber += "+";
    });
  }

  fazerConta() {}

  double width_button = 80.6;
  double height_button = 80.6;
  double width_box = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: buildCorpo(),
    );
  }

  Widget buildCorpo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      decoration: BoxDecoration(
          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          buildSapiente(),
          buildMostrar(),
          buildTeclado(),
        ],
      ),
    );
  }

  Widget buildSapiente() {
    return Container(
      alignment: Alignment.bottomRight,
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(right: 10, left: 220),
      child: AutoSizeText(
        saber,
        minFontSize: 20,
        maxFontSize: 20,
        maxLines: 1,
        textAlign: TextAlign.end,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget buildMostrar() {
    return Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 20),
        child: AutoSizeText(
          result,
          minFontSize: 40.0,
          maxFontSize: 80.0,
          maxLines: 2,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 80.0,
            color: Colors.white,
          ),
        ));
  }

  Widget buildTeclado() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: [
          buildLinha1(),
          buildLinha2(),
          buildLinha3(),
          buildLinha4(),
          buildLinha5(),
        ],
      ),
    );
  }

  Widget buildLinha1() {
    return Row(
      children: [
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                limpar();
              },
              child: Text(
                "C",
                style: TextStyle(
                  fontSize: 47,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: parenteses,
              child: Text(
                "( )",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "%",
                style: TextStyle(
                  fontSize: 47,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "÷",
                style: TextStyle(
                  fontSize: 48,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLinha2() {
    return Row(
      children: [
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "7";
                    saber = "7";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "7";
                    saber += "7";
                  }
                });
              },
              child: Text(
                "7",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "8";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "8";
                  }
                });
              },
              child: Text(
                "8",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "9";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "9";
                  }
                });
              },
              child: Text(
                "9",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "X",
                style: TextStyle(
                  fontSize: 47,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLinha3() {
    return Row(
      children: [
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "4";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "4";
                  }
                });
              },
              child: Text(
                "4",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "5";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "5";
                  }
                });
              },
              child: Text(
                "5",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "6";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "6";
                  }
                });
              },
              child: Text(
                "6",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "—",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLinha4() {
    return Row(
      children: [
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "1";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "1";
                  }
                });
              },
              child: Text(
                "1",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "2";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "2";
                  }
                });
              },
              child: Text(
                "2",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "3";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "3";
                  }
                });
              },
              child: Text(
                "3",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: somar,
              child: Text(
                "+",
                style: TextStyle(
                  fontSize: 47,
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLinha5() {
    return Row(
      children: [
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "+/-",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 1) {
                    result = "0";
                    click2 = 2;
                  } else if (click2 == 2) {
                    result += "0";
                  }
                });
              },
              child: Text(
                "0",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (click2 == 2) {
                    result += ".";
                  }
                });
              },
              child: Text(
                ".",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: width_box,
        ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.greenAccent,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: fazerConta,
              child: Text(
                "=",
                style: TextStyle(
                  fontSize: 47,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

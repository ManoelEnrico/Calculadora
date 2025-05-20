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
  String ac = "0";
  String par = "";
  String num1 = "1";

  int clickL1 = 1;
  int clicl2 = 1;
  
  

  void _adicionarValor(String valor) {
    setState(() {
      result = ac;
      clickL1 = 1;
      clicl2 = 1;
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
      if (result == "0") {
        result = par;
      } else {
        result += par;
      }
    });
  }

  somar(){
    setState(() {
      valor1 = double.parse(result);
      result = "0";
      operacao = 1;
    });
  }

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
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 5,
          // ),
          buildMostrar(),
          buildTeclado(),
        ],
      ),
    );
  }

  Widget buildMostrar() {
    return Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.only(top: 30, bottom: 15, left: 10, right: 20),
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
          // TextField(
          //   maxLength: 15,
          //   enabled: false,
          // ),
        ));
  }

  Widget buildTeclado() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                _adicionarValor(ac);
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
                "/",
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
                  if (clicl2 == 1) {
                    result = "7";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
                    result += "7";
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
                  if (clicl2 == 1) {
                    result = "8";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "9";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "4";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "5";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "6";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                "--",
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
                  if (clicl2 == 1) {
                    result = "1";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "2";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "3";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 1) {
                    result = "0";
                    clicl2 = 2;
                  } else if (clicl2 == 2) {
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
                  if (clicl2 == 2){
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
              onPressed: () {},
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

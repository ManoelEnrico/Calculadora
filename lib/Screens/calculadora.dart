// ignore_for_file: unused_field, unused_import

import 'package:calculadora/logica.dart' show CalLogica;
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Calcular extends StatefulWidget {
  const Calcular({super.key});

  @override
  State<Calcular> createState() => _CalcularState();
}

class _CalcularState extends State<Calcular> {
  final CalLogica logica = CalLogica();

  @override
  void initState() {
    super.initState();
    logica.addListener(_rebuild);
  }

  void _rebuild() => setState(() {});

  @override
  void dispose() {
    logica.removeListener(_rebuild);
    super.dispose();
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
        logica.saber,
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
          logica.result,
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
          color: Colors.lightBlue,
          child: Container(
            width: 260,
            height: height_button,
            child: TextButton(
              onPressed: logica.limpando,
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
        // Card(
        //   shape: CircleBorder(eccentricity: 1),
        //   color: Colors.lightBlue,
        //   child: Container(
        //     width: width_button,
        //     height: height_button,
        //     child: TextButton(
        //       onPressed: parenteses,
        //       child: Text(
        //         "( )",
        //         style: TextStyle(
        //           fontSize: 40,
        //           color: Colors.lightGreenAccent,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   width: width_box,
        // ),
        // Card(
        //   shape: CircleBorder(eccentricity: 1),
        //   color: Colors.lightBlue,
        //   child: Container(
        //     width: width_button,
        //     height: height_button,
        //     child: TextButton(
        //       onPressed: porcem,
        //       child: Text(
        //         "%",
        //         style: TextStyle(
        //           fontSize: 47,
        //           color: Colors.lightGreenAccent,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   width: width_box,
        // ),
        Card(
          shape: CircleBorder(eccentricity: 1),
          color: Colors.lightBlue,
          child: Container(
            width: width_button,
            height: height_button,
            child: TextButton(
              onPressed: logica.divisao,
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
              onPressed: logica.button7,
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
              onPressed: logica.button8,
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
              onPressed: logica.button9,
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
              onPressed: logica.mult,
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
              onPressed: logica.button4,
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
              onPressed: logica.button5,
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
              onPressed: logica.button6,
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
              onPressed: logica.subtrair,
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
              onPressed: logica.button1,
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
              onPressed: logica.button2,
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
              onPressed: logica.button3,
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
              onPressed: logica.somar,
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
          color: Colors.lightBlue,
          child: Container(
            width: 170,
            height: height_button,
            child: TextButton(
              onPressed: logica.button0,
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
              onPressed: logica.buttonp,
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
              onPressed: logica.fazerConta,
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

// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';

class CalLogica extends ChangeNotifier {
  double valor1 = 0;
  double valor2 = 0;
  double resultado = 0;
  int operacao = 0; // soma = 1; subtrair = 2; dividir = 3; multiplicar = 4

  String result = "0";
  String saber = "";

  int click2 = 1;
  int clickp = 1;

  String get _saber => saber;
  String get _result => result;
  int get _click2 => click2;
  double get _resultado => resultado;
  int get _operacao => operacao;

  button7() {
    if (click2 == 1) {
      result = "7";
      saber += "7";
      click2 = 2;
    } else if (click2 == 2) {
      result += "7";
      saber += "7";
    }
    notifyListeners();
  }

  button8() {
    if (click2 == 1) {
      result = "8";
      saber += "8";
      click2 = 2;
    } else if (click2 == 2) {
      result += "8";
      saber += "8";
    }
    notifyListeners();
  }

  button9() {
    if (click2 == 1) {
      result = "9";
      saber += "9";
      click2 = 2;
    } else if (click2 == 2) {
      result += "9";
      saber += "9";
    }
    notifyListeners();
  }

  button4() {
    if (click2 == 1) {
      result = "4";
      saber += "4";
      click2 = 2;
    } else if (click2 == 2) {
      result += "4";
      saber += "4";
    }
    notifyListeners();
  }

  button5() {
    if (click2 == 1) {
      result = "5";
      saber += "5";
      click2 = 2;
    } else if (click2 == 2) {
      result += "5";
      saber += "5";
    }
    notifyListeners();
  }

  button6() {
    if (click2 == 1) {
      result = "6";
      saber += "6";
      click2 = 2;
    } else if (click2 == 2) {
      result += "6";
      saber += "6";
    }
    notifyListeners();
  }

  button1() {
    if (click2 == 1) {
      result = "1";
      saber += "1";
      click2 = 2;
    } else if (click2 == 2) {
      result += "1";
      saber += "1";
    }
    notifyListeners();
  }

  button2() {
    if (click2 == 1) {
      result = "2";
      saber += "2";
      click2 = 2;
    } else if (click2 == 2) {
      result += "2";
      saber += "2";
    }
    notifyListeners();
  }

  button3() {
    if (click2 == 1) {
      result = "3";
      saber += "3";
      click2 = 2;
    } else if (click2 == 2) {
      result += "3";
      saber += "3";
    }
    notifyListeners();
  }

  button0() {
    if (click2 == 1) {
      result = "0";
    } else if (clickp > 1) {
      result += "0";
      saber += "0";
    } else if (click2 == 2) {
      if (operacao > 0) {
        result = "0";
        saber += "0";
      } else {
        result += "0";
        saber += "0";
      }
    }
    notifyListeners();
  }

  buttonp() {
    if (clickp == 1) {
      if (click2 == 2) {
        clickp++;
        result += ".";
        saber += ".";
      }
      if (result == "0") {
        clickp++;
        click2 = 2;
        result += ".";
        saber += "0.";
      }
    }
    notifyListeners();
  }

  void limpando() {
    saber = "";
    result = "0";
    click2 = 1;
    resultado = 0;
    operacao = 0;
    notifyListeners();
  }

  somar() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 1;
      click2 = 1;
      clickp = 1;

      result = "0";
      saber += "+";
      notifyListeners();
    }
  }

  subtrair() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 2;
      click2 = 1;
      clickp = 1;

      result = "0";
      saber += "-";
      notifyListeners();
    }
  }

  divisao() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 3;
      click2 = 1;
      clickp = 1;

      result = "0";
      saber += "÷";
      notifyListeners();
    }
  }

  mult() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 4;
      click2 = 1;
      clickp = 1;

      result = "0";
      saber += "x";
      notifyListeners();
    }
  }

  fazerConta() {
    if (operacao == 1) {
      valor2 = double.parse(result);

      resultado = valor1 + valor2;
      result = resultado.toString();
    } else if (operacao == 2) {
      valor2 = double.parse(result);

      resultado = valor1 - valor2;
      result = resultado.toString();
    } else if (operacao == 3) {
      valor2 = double.parse(result);

      resultado = valor1 / valor2;
      result = resultado.toString();
    } else if (operacao == 4) {
      valor2 = double.parse(result);

      resultado = valor1 * valor2;
      result = resultado.toString();
    }
    notifyListeners();
  }
}

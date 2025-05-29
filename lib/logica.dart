class Logica {
  double valor1 = 0;
  double valor2 = 0;
  double resultado = 0;
  int operacao = 0; // soma = 1; subtrair = 2; dividir = 3; multiplicar = 4
  int porcentagem = 0;

  String result = "0";
  String saber = "";

  String par = "";

  int clickL1 = 1;
  int click2 = 1;
  int clickp = 1;

  limpando() {
    saber = "";
    result = "0";
    clickL1 = 1;
    click2 = 1;
    resultado = 0;
    operacao = 0;
  }
/*
  somar() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 1;
      click2 = 1;
      clickp = 1;
      setState(() {
        result = "0";
        saber += "+";
      });
    }
  }

  subtrair() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 2;
      click2 = 1;
      clickp = 1;
      setState(() {
        result = "0";
        saber += "-";
      });
    }
  }

  divisao() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 3;
      click2 = 1;
      clickp = 1;
      setState(() {
        result = "0";
        saber += "÷";
      });
    }
  }

  mult() {
    if (click2 == 2) {
      valor1 = double.parse(result);
      operacao = 4;
      click2 = 1;
      clickp = 1;
      setState(() {
        result = "0";
        saber += "x";
      });
    }
  }

  fazerConta() {
    if (operacao == 1) {
      valor2 = double.parse(result);
      setState(() {
        resultado = valor1 + valor2;
        result = resultado.toString();
      });
    } else if (operacao == 2) {
      valor2 = double.parse(result);
      setState(() {
        resultado = valor1 - valor2;
        result = resultado.toString();
      });
    } else if (operacao == 3) {
      valor2 = double.parse(result);
      setState(() {
        resultado = valor1 / valor2;
        result = resultado.toString();
      });
    } else if (operacao == 4) {
      valor2 = double.parse(result);
      setState(() {
        resultado = valor1 * valor2;
        result = resultado.toString();
      });
    }
  }*/
}

// Alexandre Oliveira Martins //

import 'dart:io';
import 'dart:core';

void main() {
  // Menu de interação - Usuario escolhe a operação
  print(
      "\n\n <+-*/+-*/+-*/+-*/+-*/+-*/>     CALCULADORA     <+-*/+-*/+-*/+-*/+-*/+-*/>"
      " \n\n MENU \n\n Selecione a operação: \n 1. Adição \n 2. Subtração \n 3. Multiplicação \n 4. Divisão \n");
  int? opcao = verificaValorMenu(stdin.readLineSync());

  var menuInvalido = opcao == null || opcao <= 0 || opcao > 4;

  //Condição para verificar as opções do menu
  if (menuInvalido) {
    sleep(Duration(seconds: 1));
    return main();
  }

  // Primeiro valor do usuario
  print("\nDigite o primeiro valor: \n ");
  String? a = stdin.readLineSync();
  double primeiroValor = 0;
  if (verificaValorValido(a) != null) {
    primeiroValor = verificaValorValido(a);
  } else {
    sleep(Duration(seconds: 1));
    return main();
  }

  // Segundo valor do usuario
  print("\nDigite o segundo valor: \n");
  String? b = stdin.readLineSync();
  double segundoValor = 0;
  if (verificaValorValido(b) != null) {
    segundoValor = verificaValorValido(b);
  } else {
    sleep(Duration(seconds: 1));
    return main();
  }

  // Após escolher a operação
  switch (opcao) {
    case 1:
      print('\nResultado: \n');
      soma(primeiroValor, segundoValor);
      break;

    case 2:
      print('\nResultado: \n');
      subtracao(primeiroValor, segundoValor);
      break;

    case 3:
      print('\nResultado: \n');
      multiplicacao(primeiroValor, segundoValor);
      break;

    case 4:
      print('\nResultado: \n');
      divisao(primeiroValor, segundoValor);
      break;
  }
}

// Funções das operações
// Soma
soma(double x, double y) {
  var sum = x + y;
  print("$sum");
}

// Subtração
subtracao(double x, double y) {
  var sum = x - y;
  print("$sum");
}

// Divisão
divisao(double x, double y) {
  var sum = x / y;
  print("$sum");
}

// Multiplicação
multiplicacao(double x, double y) {
  var sum = x * y;
  print("$sum");
}

verificaValorValido(String? valor) {
  if (valor != null) {
    if (double.tryParse(valor) != null) {
      return double.parse(valor);
    } else {
      print("\nValor inválido! Insira um número.");
    }
  } else {
    print("\nValor inválido! Insira um número.");
  }
}

verificaValorMenu(String? valor) {
  if (valor != null) {
    if (int.tryParse(valor) != null) {
      return int.parse(valor);
    } else {
      print("\nValor inválido! Insira um número.");
    }
  } else {
    print("\nValor inválido! Insira um número.");
  }
}


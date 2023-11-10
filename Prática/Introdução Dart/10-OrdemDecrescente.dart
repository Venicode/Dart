//Verificar qual produto comprar usando como critério o mais barato

import 'dart:io';

void main() {

  List <double> numeros= [];
  print("Digite o primeiro número");
  String?num1 = stdin.readLineSync();
  numeros.add(num1 as double);

  print("Digite o segundo número");
  String?num2 = stdin.readLineSync();
  numeros.add(num2 as double);

  print("Digite o terceiro número");
  String?num3 = stdin.readLineSync();
  numeros.add(num3 as double);

}

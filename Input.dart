//Para pedir e ler uma informação ao usuário
//Primeiro precisamos importar a biblioteca dart:IO

import 'dart:io';

void main() {
  print("Qual a sua idade?");
  String? idade = stdin.readLineSync();
  print("Sua idade é $idade.");
}

//Verificar se o número é positivo ou negativo

import 'dart:io';

void main() {
  print("Digite um número");
  String? input = stdin.readLineSync();
  int numero = int.parse(input!);

  switch (numero) {
    case < 0:
      {
        print("O número é negativo");
        break;
      }
    case > 0:
      {
        print("O número é positivo");
        break;
      }

    default:{
      print("O número é igual a 0");
    }
  }
}

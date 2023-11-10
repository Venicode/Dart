//Ler 3 numeros e indicar qual o maior entre eles

import 'dart:io';

void main() {
  print("Digite o primeiro número");
  String?input1 = stdin.readLineSync();
  int n1 = int.parse(input1!);

  print("Digite o segundo número");
  String?input2 = stdin.readLineSync();
  int n2 = int.parse(input2!);

  print("Digite o terceiro número");
  String?input3 = stdin.readLineSync();
  int n3 = int.parse(input3!);

  if (n1 > n2 && n1 > n3) {
    print("O maior número entre os três é $n1");
  }

  else if (n2 > n1 && n2 > n3) {
    print("O maior número entre os três é $n2");
  }

  else{
    print("O maior número entre os três é $n3");
  }
}

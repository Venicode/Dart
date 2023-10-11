//Verificar qual produto comprar usando como critério o mais barato

import 'dart:io';

void main() {
  print("Digite o seu nome");
  String? nome = stdin.readLineSync();
  while (true) {
    print("Em qual turno você estuda? Digite M para Matutino, V para vespertino ou N para noite");
    String? turno = stdin.readLineSync();

    switch(turno){
      case == 'M':{
      print("Bom dia, $nome!");
      }
      case == 'V':{
      print("Boa tarde, $nome!");
      }
      case == 'N':{
      print("Boa noite, $nome!");
      }
      default:{
      print("Resposta inválida, digite apenas a primeira letra");
      continue;
      }
      }
    break;
  }
}

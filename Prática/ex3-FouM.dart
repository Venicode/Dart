//Verificar se o sexo é feminino ou masculino

import 'dart:io';

void main() {
  while (true) {
    print("Qual o seu sexo? Digite F para feminino ou M para masculino:");
    String? sexo = stdin.readLineSync();

    switch (sexo) {
      case == 'F':
        {
          print("Você é do sexo feminino.");
        }
      case == 'M':
        {
          print("Você é do sexo masculino");
        }
      default:
        {
          print("Digite uma resposta válida.");
          continue;
        }
    }
    break;
  }
}

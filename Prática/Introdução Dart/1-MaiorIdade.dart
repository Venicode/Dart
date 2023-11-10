//Verificar se o usuário é maior de idade
import 'dart:io';

void main() {
  while (true) {
    print("Digite a sua idade:");
    String? input = stdin.readLineSync();
    int idade = int.parse(input!);

    if (idade >= 18) {
      print("Você é maior de idade");
      break;
    }
    else if (idade < 18 && idade >= 0) {
      print("Você é menor de idade");
      break;
    }
    else {
      print("Idade inválida");
      continue;
    }
  }
}

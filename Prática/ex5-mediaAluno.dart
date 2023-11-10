//Verificar se o aluno foi aprovado ou reprovado de acordo com a média

import 'dart:io';

void main(){
  print("Digite a primeira nota:");
  String? input1 = stdin.readLineSync();
  int n1 = int.parse(input1!);

  print("Digite a segunda nota:");
  String?input2 = stdin.readLineSync();
  int n2 = int.parse(input2!);

  double media = n1 + n2 /2;

  if (media>=7 && media <10){
    print("Aprovado");
  }
  else if (media >= 10){
    print("Aprovado com distinção.");
  }
  else{
    print("Reprovado");
  }
}

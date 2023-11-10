//Verificar se a letra digitada é vogal ou consoante

import 'dart:io';

void main(){

  List <String> vogais = ['a', 'e', 'i', 'o', 'u'];
  int cont = 0;
  while (cont <= vogais.length){
    print("Digite a letra");
    String? letra = stdin.readLineSync();

      if (letra != vogais[cont]){
        print("A letra é uma consoante");
        break;
    }
      else {
        print("A letra é uma vogal");
        break;
      }
      cont +=1;
  }
}

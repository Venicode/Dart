import 'dart:io';

void stackStart(){
  print("Started Main");
  functionOne();
  print("Finished Main");
}
void functionOne(){
  print("Started F01");
  //sempre coloque os exceptions do mais especifico para o mais generalista
  try {
    functionTwo();
  } catch (e, stacktrace){ //usando apenas o catch, o tipo de Exception sera definido no erro da execução
    print(stacktrace);//rastro da pilha
    rethrow; //propaga o erro
  } finally{ //independente do que aconteça, o finally será executado.
    print("Chegou no final");
  }
  print("Finished F01");
}
void functionTwo(){
  print("Started F02");
  for (int i = 1; i <=5; i++){
    print(i);
    double amount = double.parse("Not a number");
  }
  print("Finished F02");
}
//Código de saida 0: encerrou sem nenhum erro
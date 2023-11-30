import 'dart:io';

void main(){
  print("Started Main");
  functionOne();
  print("Finished Main");
}
void functionOne(){
  print("Started F01");
  //sempre coloque os exceptions do mais especifico para o mais generalista
  try {
  functionTwo();
  } on FormatException catch (e){
    print("Ocorreu um erro dentro da F02 quando foi chamada dentro da F01.");
    print(e.message);
    print(e.source);
    print(e.toString());
  } on IOException catch (e){
    e.toString();
  } on Exception catch (e){
    e.toString();
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
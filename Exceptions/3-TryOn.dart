void main(){
  print("Started Main");
  functionOne();
  print("Finished Main");
}
void functionOne(){
  print("Started F01");
  try {
  functionTwo();
  } on FormatException{
    print("Ocorreu um erro dentro da F02 quando foi chamada dentro da F01.");
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

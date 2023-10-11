//Verificar qual produto comprar usando como critério o mais barato

import 'dart:io';

void main(){
  print("Digite o preço do primeiro produto");
  String? um = stdin.readLineSync();
  double produto1 = double.parse(um!);

  print("Digite o preço do segundo produto");
  String? dois = stdin.readLineSync();
  double produto2 = double.parse(dois!);

  print("Digite o preço do terceiro produto");
  String? tres = stdin.readLineSync();
  double produto3 = double.parse(tres!);

  if(produto1<produto2 && produto1<produto3){
    print("A melhor compra será a do produto de preço: $produto1");
  }
  else if(produto2<produto1 && produto2<produto3){
    print("A melhor compra será a do produto de preço: $produto2");
  }
  else if(produto3<produto1 && produto3<produto2){
    print("A melhor compra será a do produto de preço: $produto3");
  }
  else{
    print("Digite preços diferentes");
  }
}

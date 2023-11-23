import 'classCarro.dart';
void main(){
  Carro carro1 = Carro(marca: "Fiat", modelo: "Uno");
  carro1.VelocidadeAtual();
  carro1.Acelerar = 100;
  carro1.VelocidadeAtual();
  carro1.Frear();
  carro1.VelocidadeAtual();
}
void main(){
  Carro carro1 = Carro(marca: "Fiat", modelo: "Uno");
  carro1.VelocidadeAtual();
  carro1.Acelerar = 100;
  carro1.VelocidadeAtual();
  carro1.Frear();
  carro1.VelocidadeAtual();
}

class Carro{
  String marca;
  String modelo;
  double _velocidade = 0;

  Carro({required this.marca, required this.modelo});

  set Acelerar(double velocidade){
    _velocidade += velocidade;
  }
  Frear(){
    _velocidade = 0;
  }
  VelocidadeAtual(){
    print("A velocidade atual é $_velocidade");
  }
}

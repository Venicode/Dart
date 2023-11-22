import 'transporte.dart';
class Viagem{
  static int codigo = 213;
  double dinheiro = 0;
  Transporte locomocao;
  Set <String> registrosVisitados = <String>{};
  Map<String,dynamic> registrarPrecos = {};
  int _totalVisitados = 457;//propriedade privada

  Viagem({required this.locomocao});

  void escolherMeio(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("vou de carro");
        break;
      case Transporte.bike:
        print("vou de bike");
        break;
      default:
        break;
    }
  }

  void visitar(String localvisita){
    registrosVisitados.add(localvisita);
    _totalVisitados +=1;
  }

  void precosVisitas (String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  //mostrar o total visitados sem permitir a visualizacao da propriedade
  //get: pegar
  int get consultarTotalVisitados{
    return _totalVisitados;
  }
//get: inserir
  void set alterarLocaisVisitados(int novaQtd){
    if (novaQtd < 10){
      _totalVisitados = novaQtd;
    }
    else{
      print("Não é possível.");
    }
  }
}

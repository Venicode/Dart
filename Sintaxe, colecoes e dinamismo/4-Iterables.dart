void main(){
  escolherMeio(Transporte.carro);
  //Colecoes / Set:
  Set <String> registrosVisitados = <String>{};
  registrosVisitados = RegistrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = RegistrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = RegistrarDestinos("São Paulo", registrosVisitados);
  print(registrosVisitados);
}

enum Transporte{
  carro,
  bike,
  andar,
  skate,
  aviao,
  patins,
  onibus,
}

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

Set<String> RegistrarDestinos(String destino, Set<String> banco){
  banco.add(destino);
  return banco;
}

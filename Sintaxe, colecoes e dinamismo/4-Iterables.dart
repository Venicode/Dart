void main(){
  escolherMeio(Transporte.carro);
  //Colecoes / Set:
  Set <String> registrosVisitados = <String>{};
  registrosVisitados = RegistrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = RegistrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = RegistrarDestinos("São Paulo", registrosVisitados);
  print(registrosVisitados);

  //Propriedades do Iterable (a lista e as colecoes vem do iterable
  // e portando, adotando essas propriedades)
  print(registrosVisitados.first);
  print(registrosVisitados.last);
  print(registrosVisitados.isEmpty);
  print(registrosVisitados.length);

  //Métodos do Iterable
  print(registrosVisitados.contains("São Paulo"));
  print(registrosVisitados.contains(("Natal")));
  print(registrosVisitados.elementAt(1));
  registrosVisitados.forEach((element) {
    print("cidade: ${element}");
  });
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


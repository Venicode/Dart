void main(){
  escolherMeio(Transporte.carro);
  //Colecoes / Set:
  Set <String> registrosVisitados = <String>{};
  registrosVisitados = RegistrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = RegistrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = RegistrarDestinos("São Paulo", registrosVisitados);

  //Criando um map (dicionário)
  Map<String,dynamic> registrarPrecos = {};
  registrarPrecos["São Paulo"] = 1200;
  registrarPrecos["Rio de Janeiro"] = 1500;
  registrarPrecos["São Paulo"] = 1300;
  registrarPrecos["New York"] = "muito caro";
  print(registrarPrecos);

  //lendo um map
  print(registrarPrecos["São Paulo"]);//acessando valores das chaves
  //deletando um map
  registrarPrecos.remove("São Paulo");
  print(registrarPrecos);

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


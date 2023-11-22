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

  //diferença de var e dynamic. Com o var, irá dar  erro em tempo de execução
  //ao mudar o tipo da variavel que foi declarada antes, além disso, ela atribui o tipo de acordo com a inicilização.
  // Já o dynamic, ela pode mudar de tipo em tempo de execução e voce declara o tipo na declaracao e não na inicilização,
  //inserindo o "dynamic".
  //Tanto o termo var quanto o dynamic não exigem inicialização na declaração.
  dynamic numero = 7.1;
  print(numero.runtimeType);
  numero = "sete ponto um";
  print(numero.runtimeType);

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


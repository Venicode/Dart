void main(){
  escolherMeio(Transporte.carro);
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

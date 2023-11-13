void main(){
  escolherMeioTransporte(0);
}
void escolherMeioTransporte(int locomocao){
  if (locomocao == 0){
    print("Vou de carro");
  }
  else if(locomocao == 1){
    print("Vou de bike");
  } else{
    print("Vou ir de algum jeito");
  }
}
void escolherMeioEnum(Transporte locomocao){
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

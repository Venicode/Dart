//DRY: Don't Repeat Yourself
//Tornar a programação mais produtiva
//Facilitar a manutenção
void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarelo";
  String sabor = "Doce e cítrica";
  int tempoColheita = 25;
  bool isMadura = DiasFaltamMadura(nome,tempoColheita);//tempoColheira é um argumento != de um parametro
}

bool DiasFaltamMadura(String nome, int dias){
  int diasParaMadura = 30;
  if (dias<30) {
    int diasFaltam = diasParaMadura - dias;
    print ("A $nome não está madura. Faltam $diasFaltam para a colheita.");
    return false;
  } else{
    print ("A $nome está madura");
    return true;
  }
}

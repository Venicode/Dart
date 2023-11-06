//funcao Main
void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarelo";
  String sabor = "Doce e cítrica";
  int tempoParaColheita = 25;
  bool isMadura = DiasFaltamMadura(nome,tempoParaColheita);//tempoColheira é um argumento != de um parametro

  //criando um objeto instanciando a classe Fruta
  Fruta fruta1 = Fruta("Uva", 40, "Roxo", "Doce", 20);
  Fruta fruta2 = Fruta("Laranja", 50, "Laranja", "Citrica", 35);
  print(fruta1.nome);
}
//funcao para calcular dias até a colheita
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
//classe Fruta
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int tempoParaColheita;
  bool? isMadura;
  //Construtor
  Fruta (this.nome, this.peso,
      this.cor, this.sabor, this.tempoParaColheita, {this.isMadura});
  estaMadura (int diasMadura){
    isMadura = tempoParaColheita >=diasMadura;
    print("A sua $nome foi colhida a $tempoParaColheita dias, e precisa de $diasMadura para poder comer."
        "Portanto, ela está madura? $isMadura");
  }
}

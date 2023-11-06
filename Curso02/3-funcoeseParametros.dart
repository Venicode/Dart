//DRY: Don't Repeat Yourself
//Tornar a programação mais produtiva
//Facilitar a manutenção
void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarelo";
  String sabor = "Doce e cítrica";
  int tempoColheita = 40;
  bool isMadura = ValidarMadura(tempoColheita);//tempoColheira é um argumento != de um parametro
  mostrarMadura(nome,tempoColheita);
  mostrarMaduraOp(nome,tempoColheita, cor: "Verde e amarelo");
  mostrarMaduraPadrao(nome,tempoColheita);
  mostrarMaduraRequired(nome,tempoColheita,cor: cor);
}
//funcao com retorno
bool ValidarMadura (int dias) {// o int dias é um parametro
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
//Tipos de parametros:
// 1- Posicionais obrigatórios
//funcao sem retorno (void)
void mostrarMadura (String nome, int dias){ //void significa vazio, é o default da funcao
  if (dias >= 30){
    print("A $nome está madura.");
  }
  else {
    print("A $nome não está madura.");
  }
}
// 2- Nomeados Opcionais
//Os opcionais não necessitam de ordem nos argumentos
mostrarMaduraOp (String nome, int dias, {String? cor}){//a cor é um parametro opcional
  if (dias >= 30){
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  if (cor != null){
    print("A $nome é $cor");
  }
}
// 3- Parametros com "Padrão"
//Caso o parametro cor não receba um argumento, o padrão será "Sem cor"
mostrarMaduraPadrao (String nome, int dias, {String cor = "Sem cor"}){
  if (dias >= 30){
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
    print("A $nome é $cor");

}
// 4- Modificador "Required"
//Uso quando eu quero que seja um parametro nomeado porem obrigatorio
mostrarMaduraRequired (String nome, int dias, {required String cor}){
  if (dias >= 30){
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  print("A $nome é $cor");
}

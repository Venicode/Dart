//classe Alimento
class Alimento {
  String nome;
  double peso;
  String cor;

  //Construtor
  Alimento(this.nome, this.peso, this.cor);

  //Método
  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

//classe Fruta
class Fruta extends Alimento {
  String sabor;
  int tempoParaColheita;
  bool? isMadura;

  //Construtor
  Fruta(
      String nome, double peso, String cor, this.sabor, this.tempoParaColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  //Método
  estaMadura(int diasMadura) {
    int diasParaMadura = 30;
    if (diasMadura < 30) {
      int diasFaltam = diasParaMadura - diasMadura;
      print("A $nome não está madura. Faltam $diasFaltam para a colheita.");
      return false;
    } else {
      print("A $nome está madura");
      return true;
    }
  }

  void fazerSuco() {
    print("Você fez um suco de $nome");
  }
}

//classe Legumes utilizando a herança da classe Alimento (super)
class Legumes extends Alimento {
  bool isCozinhar;

  //Construtor
  Legumes(String nome, double peso, String cor, this.isCozinhar)
      : super(nome, peso, cor);

  //Método
  void cozinhar() {
    if (isCozinhar) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("Não precisa cozinhar");
    }
  }
}

//classe Citricas
class Citricas extends Fruta {
  double nivelAzevedo;

  //Construtor
  Citricas(String nome, double peso, String cor, String sabor,
      int tempoParaColheita, this.nivelAzevedo)
      : super(nome, peso, cor, sabor, tempoParaColheita);

  void isRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refrigerante de $nome");
    }
  }
}



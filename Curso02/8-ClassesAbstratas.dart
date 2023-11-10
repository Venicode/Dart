//classe Alimento
void main() {
  Legumes mandioca = Legumes("Macaxeira", 1200, "Marrom", true);
  Fruta banana = Fruta("Banana", 75, "Amarelo", "Doce", 35);
  Nozes macadamia = Nozes('Macadamia', 2, 'Branco Amarelado', 'Doce', 12, 35);
  Citricas limao = Citricas('Limão', 100, 'Verde', 'Azedo', 15, 9);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  banana.fazerSuco();

  limao.isRefri(true);
  limao.estaMadura(12);

  banana.fazerMassa();
  macadamia.fazerMassa();
}

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
class Fruta extends Alimento implements Bolo {
  String sabor;
  int tempoParaColheita;
  bool? isMadura;

  //Construtor
  Fruta(
      String nome, double peso, String cor, this.sabor, this.tempoParaColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  //Métodos
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

  @override
  void separarIngredientes() {
    print('Pegar os ingredientes');
  }

  @override
  void fazerMassa() {
    print('Misturar os ingredientes');
  }

  @override
  void assar() {
    print('Colocar no forno');
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

  //Método
  void isRefri(bool existe) {
    if (existe) {
      print("Existe refrigerante de $nome");
    } else {
      print("Não existe refrigerante de $nome");
    }
  }
}

//classe Nozes
class Nozes extends Fruta {
  double pctOleoNatural;

  //Construtor
  Nozes(String nome, double peso, String cor, String sabor,
      int tempoParaColheita, this.pctOleoNatural)
      : super(nome, peso, cor, sabor, tempoParaColheita);

  @override //sobreescrever um método para personalizar de acordo com cada classe
  void fazerMassa() {
    print('Tirar a casca');
    //chamar o restante dos passos do fazerMassa na classe mãe (Fruta)
    super.fazerMassa();
  }
}

//Criando um bolo com o conceito de classes abstratas
abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}

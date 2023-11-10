Para evitar erros inesperados do código, 
por padrão o Dart não permite criar uma variável com o valor nulo.

Porem caso seja necessário lidar com variaveis de valor nulo, podemos fazer o seguinte:

Para declarar variavel que pode ser nulo:
int? cafe = null;

Caso tenha um código que receba essa variavel e nesse trecho ela nao pode ser nula, podemos usar a exclamacao

Exemplo de código:

class Cafe {
  String? _temperatura; // Criar a Temperatura que não pode ser nula

  void esquentar() { _temperatura = 'quente'; } // Definir a Temperatura para quente

  void esfriar() { _temperatura = 'gelado'; }

  String servir() => _temperatura! + ' cafe'; // Servir o Cafe com a Temperatura que pode ser nula.
}

Porém, fazer isso não é uma boa prática, voce pode usar o late para definir uma variavel como nula, 
porém nao pode ficar vazio quando for usado em alguma função ou trecho de código.

Exemplo de código:

class Cafe2 {
  late String _temperatura; // criei a Temperatura

  void esquentar() { _temperatura = 'quente'; } // Definir a Temperatura para quente

  void esfriar() { _temperatura = 'gelado'; }

  String servir() => _temperatura + ' cafe'; // Servir o Cafe com a Temperatura só depois que a _temperatura for diferente de nula.
}

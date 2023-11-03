void main() {
  List <String> lista = ["Ricardo", "Ana", "Silva", "Andreia", "Roberto"];
  //recortar a lista com ou sem intervalo e fazer uma sublista
  List <String> sublista = lista.sublist(1, 4);
  print(sublista);
  //Percorre os elementos da lista
  sublista.forEach((element) {
    print(element);
  });
  //Procurando elementos da lista com o contains
  String procurando = "Silva";
  if (lista.contains(procurando)){
    print("Contém");
    //Usando o booleano. O exclamacao esta afirmando que nao contem
    //ou seja, vai retornar falso, se eu retirar, irá retornar true
    print(!lista.contains(procurando));
  }
  else{
    print("Não contém");
  }
  //Reduce para reduzir a lista em um só objeto
  String nomes = lista.reduce((value, element){
    return value + " " + element;
  });
  print(nomes);
  //Where para criar condição de uma lista se o nome tiver mais de 3 letras
  Iterable listaMaior = lista.where((element) => element.length>3).toList();
  print(listaMaior);
  //Pegar apenas o primeiro elemento que retornar true
  String primeiro = lista.firstWhere((element) => element.length >3);
  print(primeiro);
  //Pegar apenas o ultimo elemento que retornar true
  String ultimo = lista.lastWhere((element) => element.length >3);
  print(ultimo);
}

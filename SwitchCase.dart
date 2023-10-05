void main() {
  
  /*testando o switch case
  o case é a variavel que irá ser usada na comparação*/
  int idade = 19;

  switch (idade) {
    case > 18:
      {
        print("Você é maior de idade");
      }
      break;
    case 18:
      {
        print("Voce tem 18 anos");
      }
      break;
    case < 18:
      print("Você é menor de idade");
      break;
    default:
      {
        print("Idade inválida");
      }
  }
}


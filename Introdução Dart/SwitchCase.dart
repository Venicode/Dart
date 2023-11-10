void main() {
  
  /*testando o switch case
  o case é a variavel que irá ser usada na comparação

  Qual a diferença de usar if else e switch case?
  O Switch case irá comparar apenas um valor de cada vez e seguir uma lista de instruções.
  O if else nos permite comparar vários valores em uma comparação, ficando mais facil de manipular.
   */
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

void main() {
  var idade = 19;

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

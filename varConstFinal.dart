void main(){

  const String nome = "Vitoria";//nao pode ser mudado e nao posso deixar vazio
  final String apelido; //uma vez definido, não pode ser mudado. Pode deixar vazio
  
  var altura = 1.65; //var significa que o próprio Dart irá definir o tipo de variável. 
  //É comum ser utilizado quando voce não tem certeza do tipo de dado que irá receber.
  //não é permitdo usar var em const e final, já que os valores não variam.
  int idade = 18;

  apelido = "Cidinha";

  List <dynamic>Vitoria =[nome, apelido, idade,altura];

  print("Eu sou a ${Vitoria[0]}, meu apelido é ${Vitoria[1]}"
  ", tenho ${idade = 19} anos e minha altura é ${Vitoria[3]}.");
}

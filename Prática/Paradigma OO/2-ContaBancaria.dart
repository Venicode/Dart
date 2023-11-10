import 'dart:io';

void main(){

  ContaBancaria contaCadastrada = ContaBancaria(12345678, 123456,'Vitoria Oliveira', 1000);

  print("Bem vindo(a) ao Banco Veni Brasil\n");

  print("Informe sua conta: ");
  String? contaStr = stdin.readLineSync();
  int conta = int.parse(contaStr!);

  print("Informe sua senha: ");
  String? SenhaStr = stdin.readLineSync();
  int senha = int.parse(SenhaStr!);

  if(conta == contaCadastrada.numeroConta && senha == contaCadastrada.senha) {
    String nome = contaCadastrada.nomeTitular;
    print('Olá $nome!\n');
    print("Que tipo de operação deseja realizar?\n"
        "1- Depósito\n2-Saque");
    String? escolha = stdin.readLineSync();
    switch (escolha){
      case == '1':{
        print("Informe a quantia que deseja depositar: ");
        String?depositoStr = stdin.readLineSync();
        double deposito = double.parse(depositoStr!);
          contaCadastrada.realizarDeposito(1000, deposito);
      }
      case == '2':{
        print("Informe a quantia que deseja retirar: ");
        String? saqueStr = stdin.readLineSync();
        double saque = double.parse(saqueStr!);
        contaCadastrada.realizarSaque(1000, saque);
      }
      default:{
        print("Escolha uma opção válida");
      }
    }
  }
  else{
    print("Conta inválida.");
  }
}
class ContaBancaria{
  int numeroConta;
  int senha;
  String nomeTitular;
  double saldoConta;

  ContaBancaria(this.numeroConta, this.senha,this.nomeTitular,this.saldoConta);

  realizarDeposito(double saldo, double deposito){
    if(deposito != 0 && deposito>0){
      double novoSaldo = deposito+saldo;
      print("Depósito de $deposito realizado com sucesso!");
      print("Seu novo saldo é ${novoSaldo.toStringAsFixed(2)}");
    }
    else{
      print("Por favor, informe um valor maior que 0");
    }
  }
  realizarSaque(double saldo, double saque){
    if(saque>saldo){
      print("Saldo insuficiente para o saque.");
    }
    else if (saque== 0 || saque<0){
      print("Por favor, digite um valor maior que 0 para realizar o saque.");
    }
    else{
      double novoSaldo = saldo-saque;
      print("Saque de $saque realizado com sucesos!");
      print("Seu novo saldo é ${novoSaldo.toStringAsFixed(2)}");
    }
  }
}

void main() {
  TiposConta.tiposContasAtivos();
}

enum TiposConta{
  salario,
  popanca,
  corrente,
  investimentos;

  static void tiposContasAtivos(){
    print("Conta Salário, Conta Poupança, Conta Corrente e Conta Investimentos.");
  }
}
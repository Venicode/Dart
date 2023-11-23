class Funcionario{
  String Nome;
  double _Salario = 0;
  String _Cargo = "Sem cargo";

  Funcionario({required this.Nome});

  void set Salario(double Salario){
    _Salario = Salario;
  }
  void set Cargo (String cargo){
    _Cargo = cargo;
  }

  double CalculoSalarioLqd(){
    double impostoRenda = 250;
    double salarioLiquido = _Salario - impostoRenda;
    return salarioLiquido;
  }
}


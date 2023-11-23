void main(){
Funcionario funcionario1 = Funcionario(Nome: "Vitoria");
String cargo = funcionario1._Cargo = "Software Developer";
double salario = funcionario1._Salario = 5000;
double salarioLiquido = funcionario1.CalculoSalarioLqd(salario);
print("A funcionária ${funcionario1.Nome} possui um salário bruto de ${salario.toStringAsFixed(2)}.\n"
    "O cargo atual é $cargo e o salário líquido é ${salarioLiquido.toStringAsFixed(2)}");
}
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

  double CalculoSalarioLqd(double salario){
    double impostoRenda = 250;
    double salarioLiquido = salario - impostoRenda;
    return salarioLiquido;
  }
}


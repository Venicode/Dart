import 'classFuncionario.dart';

void main(){
  Funcionario funcionario1 = Funcionario(Nome: "Vitoria");
  String cargo = funcionario1.Cargo = "Software Developer";
  double salario = funcionario1.Salario = 5000;
  double salarioLiquido = funcionario1.CalculoSalarioLqd();
  print("A funcionária ${funcionario1.Nome} possui um salário bruto de ${salario.toStringAsFixed(2)}.\n"
      "O cargo atual é $cargo e o salário líquido é ${salarioLiquido.toStringAsFixed(2)}");
}
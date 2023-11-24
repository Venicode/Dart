import 'dart:io';
class Consulta {
  String? Especilizacao;
  String? NomeMedico;
  String? Data;
  String? Horario;

  AddNovaConsulta() {
    print("Por favor informe os dados abaixo:");
    print("Em qual área deseja marcar a consulta?\n "
        "1- Clinico Geral\n"
        "2 - Cardiologista\n"
        "3- Dermatologista\n"
        "4- Psiquiatrica\n");
    int escolhaEspecilizacao = int.parse(stdin.readLineSync()!);

    switch (escolhaEspecilizacao) {
      case == 1:
        Especilizacao = "Clinico Geral";
        NomeMedico = "Joao";
        break;
      case == 2:
        Especilizacao = "Cardiologista";
        NomeMedico = "Maria";
        break;
      case == 3:
        Especilizacao = "Dermatologista";
        NomeMedico = "Pedro";
      case == 4:
        Especilizacao = "Psiquiatrica";
        NomeMedico = "Amanda";
      default:
        print("Digite uma opção válida");
        break;
    }
    print("Informe a data que deseja marcar a consulta: ");
    Data = stdin.readLineSync()!;
    print("Qual horário");
    Horario = stdin.readLineSync()!;
    print("Consulta Agendada!");
  }
}

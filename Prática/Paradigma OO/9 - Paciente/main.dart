import 'classConsulta.dart';
import 'classPaciente.dart';
import 'dart:io';
void main(){
  Map<Paciente,Consulta> agendamentos = {};
  while (true) {
    Consulta novaConsulta = Consulta();
    print("Olá, para agendar uma consulta, por favor informe seu nome abaixo:\n");
    String nome = stdin.readLineSync()!;
    print("Informe  a sua idade:\n");
    int idade = int.parse(stdin.readLineSync()!);
    Paciente novoPaciente = Paciente(Nome: nome, Idade: idade, Consultas: novaConsulta);
    novaConsulta.AddNovaConsulta();
    agendamentos[novoPaciente] = novaConsulta;
    novoPaciente.ExibirHistoricoConsultas();

    print("Deseja agendar mais consultas ou visualizar o histórico de agendamentos?"
        "\nDigite 1 para sim e qualquer tecla para não");
    int escolhaOpcao = int.parse(stdin.readLineSync()!);
    switch (escolhaOpcao){
      case == 1:
        print("Deseja agendar novas consultas(1) ou visualizar o histórico?(2)");
        int escolhaOpcao1 = int.parse(stdin.readLineSync()!);
        switch (escolhaOpcao1){
          case == 1:
            continue;
            break;
          case == 2:
            agendamentos.forEach((paciente, consulta) {
              print("Agendamentos do $paciente:");
              print(consulta);
            });
            break;
        }
        continue;
      case == 2:
        print("Certo, até logo");
        break;
    }
  }
}
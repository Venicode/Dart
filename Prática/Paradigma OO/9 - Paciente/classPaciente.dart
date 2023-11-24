import 'classConsulta.dart';
class Paciente{
  String Nome;
  int Idade;
  Consulta Consultas;

  Paciente({required this.Nome, required this.Idade, required this.Consultas});

  ExibirHistoricoConsultas(){
    print("Consultas do paciente $Nome: \n");
   print("Especialização: ${Consultas.Especilizacao}");
   print("Médico: ${Consultas.NomeMedico}");
   print("Data: ${Consultas.Data}");
   print("Horário: ${Consultas.Horario}");
  }
}

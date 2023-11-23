import 'classConsulta.dart';
class Paciente{
  String Nome;
  int Idade;
  List<Consulta> Consultas = [];

  Paciente({required this.Nome, required this.Idade, required this.Consultas});

}
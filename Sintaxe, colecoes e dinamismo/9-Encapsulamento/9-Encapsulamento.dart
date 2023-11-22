import 'viagem.dart';
import 'transporte.dart';
void main(){
  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  //mostrar o total visitados sem permitir a alteracao da propriedade por trás
  print(viagemMaio.consultarTotalVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalVisitados);
  viagemMaio.alterarLocaisVisitados = 100;
  print(viagemMaio.consultarTotalVisitados);
}


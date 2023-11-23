void main(){
  Aluno aluno1 = Aluno(NomeAluno: "Vitoria", Matricula: "G4347CC1");
  aluno1.Notas = [10,8,9];
  double media = aluno1.CalcularMedia(aluno1.Notas);
  aluno1.SituacaoAluno(media);

}

class Aluno{
  String NomeAluno;
  String Matricula;
  List<double> Notas = [];

  Aluno({required this.NomeAluno, required this.Matricula});

  double CalcularMedia(List<double> notasAluno){
    double somaNotas = notasAluno.reduce((double a, double b) => a+b);
    double media = somaNotas/notasAluno.length;
    return media;
  }

  void SituacaoAluno(double media){
    if(media<7){
      print("Aluno reprovado. Sua média é ${media.toStringAsFixed(2)}");
    }
    else{
      print("Aluno aprovado. Sua média é ${media.toStringAsFixed(2)}");
    }
  }
}
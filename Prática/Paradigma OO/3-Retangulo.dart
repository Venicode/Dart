import 'dart:io';

void main() {
  print("Cálculo do retângulo");
  print("Digite a base (largura) do retângulo: ");
  String? baseStr = stdin.readLineSync();
  double base = double.parse(baseStr!);

  print("Digite a altura do retângulo: ");
  String? alturaStr = stdin.readLineSync();
  double altura = double.parse(alturaStr!);

  print("Que tipo de operação deseja realizar?\n"
      "1-Calcular a área\n2=Calcular perímetro");
  String? escolha = stdin.readLineSync();

  switch (escolha) {
    case == '1': {
        break;
      }
    case == '2': {
        break;
      }
    default: {
        break;
      }
  }

  Retangulo retangulo = Retangulo(base, altura);
}

class Retangulo {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  void CalcularArea({required double base, required double altura}) {
    double Area = base * altura;
    print("A área do retângulo é ${Area.toStringAsFixed(2)}");
  }

  void CalcularPerimetro({required double base, required double altura}) {
    double Perimetro = 2 * (base + altura);
    print("O perímetro do retângulo é ${Perimetro.toStringAsFixed(2)}");
  }
}

//importar a biblioteca para operações matématica mais complexas
import 'dart:math';
import 'dart:io';

void main() {
  print("Digite o raio do círculo: ");
  String? raioStr = stdin.readLineSync();
  double raio = double.parse(raioStr!);
  Circulo circulo = Circulo(raio);
  print("Deseja realizar qual tipo de operação? "
      "\n1-Calcular Área\n2-Calcular Perímetro");
  String? resposta = stdin.readLineSync();

  while (true) {
    switch (resposta) {
      case == '1': {
          circulo.CalcularArea(raio);
          break;
        }
      case == '2': {
          circulo.CalcularPerimetro(raio);
          break;
        }
      default: {
          print("Deseja uma resposta válida");
          continue;
        }
    }
    break;
  }
}

class Circulo {
  double raio;

  Circulo(this.raio);

  void CalcularArea(double raio) {
    double Area = 3.14 * pow(raio, 2); //a função pow realiza a exponenciação
    print("A área do círculo é ${Area.toStringAsFixed(2)}");
  }

  void CalcularPerimetro(double raio) {
    double Perimetro = (2 * 3.14 * raio);
    print("O perímetro do círculo é ${Perimetro.toStringAsFixed(2)}");
  }
}

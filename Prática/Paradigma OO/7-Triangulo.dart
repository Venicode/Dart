void main(){
Triangulo triangulo1 = Triangulo(adjacente: 5, oposto: 3, hipotenusa: 4);
triangulo1.verificarTriangulo();
triangulo1.calcularArea();
}

class Triangulo {
  double adjacente;
  double oposto;
  double hipotenusa;
  bool valido = false;

  Triangulo({required this.adjacente, required this.oposto, required this.hipotenusa});

  verificarTriangulo() {
    if (adjacente != oposto && oposto != hipotenusa && adjacente != hipotenusa) {
      print("Triângulo válido");
      valido = true;
    }
    else{
      print("Triângulo inválido");
    }
  }

  calcularArea() {
    if (valido == true) {
      double area = adjacente * oposto / 2;
      print("A área do triângulo é $area");
    }
    else {
      print("O triângulo não é válido, portanto não tem como fazer o cálculo da área.");
    }
  }
}

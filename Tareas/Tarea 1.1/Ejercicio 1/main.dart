class Circulo {

  double radio;
  String color;

  Circulo(this.radio, this.color);

  double calcularArea() {
    return 3.14159 * radio * radio;
  }

  double calcularPerimetro() {
    return 2 * 3.14159 * radio;
  }
}

void main() {

  Circulo circulo = Circulo(5.0, 'rojo');
  
  print('Area del círculo: ${circulo.calcularArea()}');
  print('Perímetro del círculo: ${circulo.calcularPerimetro()}');
}

void main() {
  var rectangulo = Rectangulo.rectangle(largo: 5.0, ancho: 3.0);

  // Acceder al área utilizando el getter
  print("El área del rectángulo es: ${rectangulo.area}");
}

class Rectangulo {
  double _largo;
  double _ancho;

  Rectangulo._privado(this._largo, this._ancho);

  factory Rectangulo.rectangle({required double largo, required double ancho}) {
    return Rectangulo._privado(largo, ancho);
  }

  // Getter para calcular el área
  double get area => _largo * _ancho;
}

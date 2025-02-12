void main() {
  var rectangulo = figura.rectangle();

  // Acceder al área utilizando el getter
  print("El área del rectángulo es: ${rectangulo.area()}");

  var cuadrado = figura.cuadrado();
  print("El área del cuadrado es: ${cuadrado.area()}");

  var triangulo = figura.triangulo();
  print("El área del triángulo es: ${triangulo.area()}");
  print(triangulo.descripcion());
}

class figura {
  double _largo;
  double _ancho;
  String _tipo;

  figura._privado(this._largo, this._ancho, this._tipo);

  factory figura.rectangle() {
    return figura._privado(3, 6, 'rectángulo');
  }

  factory figura.cuadrado() {
    return figura._privado(4, 4, 'cuadrado');
  }

  factory figura.triangulo() {
    return figura._privado(2, 4, 'triángulo');
  }

  double area() {
    if (_tipo == 'triángulo') {
      return _areaTriangulo();
    }
    return _area;
  }

  // Getter para calcular el área
  double _areaTriangulo() => (_largo * _ancho) / 2;
  double get _area => _largo * _ancho;

  String descripcion() => 'Figura: $_tipo, Largo: $_largo, Ancho: $_ancho';
}

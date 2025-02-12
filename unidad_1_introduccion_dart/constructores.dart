/// La clase `Persona` representa a una persona con un nombre y una edad.
///
/// Esta clase utiliza parámetros posicionales y asignación directa a los atributos.
class Persona {
  String _nombre;
  int _edad;

  /// Crea una instancia de `Persona` con el [nombre] y [edad] dados.
  ///
  /// Este constructor utiliza parámetros posicionales para inicializar los atributos.
  Persona(this._nombre, this._edad);

  /// Muestra el nombre y la edad de la persona.
  void mostrar() {
    print("""
    Nombre: $_nombre
    Edad: $_edad
    """);
  }
}

/// La clase `Persona2` representa a una persona con un nombre y una edad.
///
/// En el constructor, asigna explícitamente los valores usando `this._nombre = nombre;`.
class Persona2 {
  late String _nombre;
  late int _edad;

  /// Crea una instancia de `Persona2` con el [nombre] y [edad] dados.
  ///
  /// Este constructor asigna explícitamente los valores a los atributos usando `this`.
  Persona2(String nombre, int edad) {
    this._nombre = nombre;
    this._edad = edad;
  }

  /// Muestra el nombre y la edad de la persona.
  void mostrar() {
    print("""
      Nombre: $_nombre
      Edad: $_edad
      """);
  }
}

/// La clase `Persona3` representa a una persona con un nombre y una edad.
///
/// Esta clase utiliza una lista de inicialización para asignar valores antes de que el constructor complete su ejecución.
class Persona3 {
  String _nombre;
  int _edad;

  /// Crea una instancia de `Persona3` con el [nombre] y [edad] dados.
  ///
  /// Este constructor utiliza una lista de inicialización para asignar los valores a los atributos.
  Persona3(String nombre, int edad)
      : _nombre = nombre,
        _edad = edad;

  /// Muestra el nombre y la edad de la persona.
  void mostrar() {
    print("""
      Nombre: $_nombre
      Edad: $_edad
      """);
  }
}

/// La clase `Persona4` representa a una persona con un nombre y una edad.
///
/// Esta clase utiliza una lista de inicialización para asignar valores antes de que el constructor complete su ejecución.
class Persona4 {
  String _nombre;
  int _edad;

  /// Crea una instancia de `Persona4` con el [nombre] y [edad] dados.
  ///
  /// Este constructor utiliza una lista de inicialización y una aserción para validar la edad.
  Persona4(String nombre, int edad)
      : assert(edad > 18, "La edad debe ser mayor que 18"),
        _nombre = nombre,
        _edad = edad;

  /// Muestra el nombre y la edad de la persona.
  void mostrar() {
    print("""
    Nombre: $_nombre
    Edad: $_edad
    """);
  }
}

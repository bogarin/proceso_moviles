---
marp: true
theme: default
class: invert
paginate: true
---

# Uso de Factory en Dart

## Introducción

El constructor `factory` en Dart se usa para devolver instancias preexistentes, implementar patrones de diseño y controlar la creación de objetos.

---

## ¿Por qué usar `factory`?

- **Optimización de recursos**: Reutiliza instancias en lugar de crear nuevas.
- **Patrones de diseño**: Facilita la implementación de Singleton o Factory Method.
- **Control de instancias**: Permite lógica adicional antes de crear un objeto.

---

## Ejemplo 1: Implementación del patrón Singleton

El patrón Singleton asegura que solo haya una única instancia de una clase.

----

```dart
class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  
  factory DatabaseService() {
    return _instance;
  }
  
  DatabaseService._internal();
  
  void connect() {
    print("Conectando a la base de datos...");
  }
}

void main() {
  var db1 = DatabaseService();
  var db2 = DatabaseService();
  
  print(db1 == db2); // true, ambas referencias son la misma instancia
  db1.connect();
}
```

---

## Ejemplo 2: Creación de objetos con lógica personalizada

Un `factory` puede devolver diferentes subclases según condiciones. En este caso, se utiliza una clase abstracta como base para las subclases.

---

```dart
abstract class Vehiculo {
  void conducir();
}

class Coche extends Vehiculo {
  @override
  void conducir() => print("Conduciendo un coche.");
}

class Moto extends Vehiculo {
  @override
  void conducir() => print("Conduciendo una moto.");
}

class VehiculoFactory {
  Vehiculo _vehiculo;

  VehiculoFactory._(this._vehiculo);

  factory VehiculoFactory.crearVehiculo(String tipo) {
    if (tipo == "coche") return VehiculoFactory._(Coche());
    if (tipo == "moto") return VehiculoFactory._(Moto());
    throw ArgumentError("Tipo de vehículo no válido");
  }

  Vehiculo get vehiculo => _vehiculo;
}

void main() {
  Vehiculo vehiculo1 = VehiculoFactory.crearVehiculo("coche").vehiculo;
  vehiculo1.conducir();

  Vehiculo vehiculo2 = VehiculoFactory.crearVehiculo("moto").vehiculo;
  vehiculo2.conducir();

  try {
    Vehiculo vehiculo3 = VehiculoFactory.crearVehiculo("pickup").vehiculo;
    vehiculo3.conducir();
  } catch (e) {
    print(e);
  }
}

```

---

## Conclusión

- `factory` permite mayor flexibilidad en la creación de instancias.
- Es útil para Singleton y Factory Method.
- Usar clases abstractas con `extends` en las subclases asegura un mejor diseño orientado a objetos.
- Ayuda a optimizar el uso de memoria y organizar mejor el código.

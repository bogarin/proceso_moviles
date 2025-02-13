---
marp: true
theme: dafault
class: invert
paginate: true
# backgroundColor: #ffffff
---

# Tipos de Variables en Dart

## Introducción

Las variables en Dart se utilizan para almacenar datos y pueden ser de distintos tipos dependiendo de su uso en el programa.

---

## Tipos de Variables en Dart

### Tipos Primitivos

- **Enteros (int)**: Representan números enteros. Ejemplo: `int edad = 25;`.
- **Flotantes (double)**: Representan números con decimales. Ejemplo: `double pi = 3.14;`.
- **Booleanos (bool)**: Representan valores de verdad. Ejemplo: `bool activo = true;`.
- **Cadenas (String)**: Representan secuencias de caracteres. Ejemplo: `String saludo = "Hola";`.

---

## Tipos Compuestos

- **Listas (List)**: Son colecciones ordenadas de elementos. Ejemplo: `List<int> numeros = [1, 2, 3, 4];`.
- **Mapas (Map)**: Conjunto de pares clave-valor. Ejemplo: `Map<String, int> edades = { "Juan": 25, "Maria": 30 };`.
- **Sets (Set)**: Colección de valores únicos. Ejemplo: `Set<String> frutas = {"manzana", "pera", "uva"};`.

---

## Tipos Dinámicos y Variables Implícitas

- **var**: Infieren el tipo de dato al momento de la asignación, pero no pueden cambiar de tipo posteriormente. Ejemplo:

  ```dart
  var mensaje = "Hola"; // Es una cadena
  ```

- **dynamic**: Permite cambiar el tipo de dato en tiempo de ejecución. Ejemplo:

  ```dart
  dynamic variable = "Texto";
  variable = 10; // Ahora es un entero
  ```

---

## Tipos de Variables Según su Ámbito en Dart

- **Locales**: Definidas dentro de una función o bloque.
- **Globales**: Definidas fuera de cualquier función y accesibles en todo el archivo.
- **Final y Const**: Variables cuyo valor no cambia después de ser asignado. Ejemplo:
  - `final String nombre = "Ana";`
  - `const double gravedad = 9.8;`

---

## Ejemplo en Dart

```dart
void main() {
  int edad = 30;
  double altura = 1.75;
  String nombre = "Carlos";
  bool activo = true;
  
  var ciudad = "Bogotá";
  dynamic dato = "Hola";
  dato = 42; // Cambio dinámico de tipo
  
  List<int> numeros = [1, 2, 3, 4];
  Map<String, int> edades = { "Juan": 25, "Maria": 30 };
  
  print("Nombre: $nombre, Edad: $edad, Altura: $altura, Activo: $activo, Ciudad: $ciudad, Dato: $dato");
}
```

---

## Conclusión

- Dart proporciona una variedad de tipos de datos para manejar diferentes escenarios de programación.
- `var` es útil cuando el tipo de dato es conocido y no cambiará.
- `dynamic` permite flexibilidad pero puede generar errores si no se maneja correctamente.
- El uso adecuado de los tipos de variables mejora el rendimiento y la organización del código.
- Comprender el ámbito y la inmutabilidad de las variables ayuda a escribir código más eficiente y seguro.

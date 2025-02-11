void main() {
  // dynamic variable = 'Hola';
  // print(variable); // Imprime: Hola

  // variable = 42;
  // print(variable); // Imprime: 42

  // variable = true;
  // print(variable); // Imprime: true

//listados
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 9, 10];
  // print('Listado de numeros $numbers');
  // print('Cantidad de numeros ${numbers.length}');

  final numerosMayores5 = numbers.where((int numero) {
    return numero > 5;
  });

  // print(numerosMayores5.toList());

  // final numerosMayor = numbers.where((int numero) => numero > 5);

  // print(numerosMayor);

  final numerosMayores = numbers.where(isGreaterThan5);

  //
  print(numerosMayores.toList());

  // final numerosMay = numbers.where(isGreaterThanFive);

  // print(numerosMay.toList());

  // numbers.forEach(printListNombers);

  //sets
  /*
  Un Set en Dart es una colección de elementos únicos, no permite duplicados y no está ordenado.
  */

  // Set<String> frutas = {'manzana', 'pera', 'naranja'};

  // frutas.add('uva');
  // frutas.add('naranja');  // No se agrega, ya existe en el Set

  // print(frutas);  // Imprime: {manzana, pera, naranja, uva}

  // Convertimos la lista a un Set para eliminar duplicados
  //final List<int> result uniqueNumbers = numbers.toSet().toList();
}

bool isGreaterThan5(int numero) {
  return numero > 5;
}

// void printListNombers(int number) => print(number);
// bool isGreaterThanFive(int numero) => numero > 5;

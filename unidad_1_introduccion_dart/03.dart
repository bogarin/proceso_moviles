void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor', 'uno mas'],
    'sprites': {1: 'ditto/etc.png', 2: 'ditto/etc2.png'}
  };

  int hp = pokemon['hp'];
  print(hp);
  hp += 50;

  // print(hp);

  pokemon['hp'] = hp;

  print(pokemon['hp']);
  // final Map<String, Object> pokemon3 = {
  //   'name': 'Ditto',
  //   'hp': 100,
  //   'isAlive': true,
  //   'abilities': <String>['impostor', 'uno mas'],
  //   'sprites': {1: 'ditto/etc.png', 2: 'ditto/etc2.png'}
  // };

  // print(pokemon['abilities'][1]);
  // print('sprites: ${pokemon['sprites'][2]}');
  // print('sprites: ${pokemon['sprites'][1]}');

//   final pokemon2 = {
//     'name': 'Ditto',
//     'hp': 100,
//     'isAlive': true,
//     'abilities': <String>['impostor', 'uno mas'],
//     'sprites': {1: 'ditto/etc.png', 2: 'ditto/etc2.png'}
//   };

//print(pokemon2['name']);

// Obtener el valor de 'sprites' y convertirlo a Map<int, String>
//   Map<int, String> spritesPk2 =
//       (pokemon2['sprites'] as Map).cast<int, String>();

// Acceder al valor correspondiente en 'sprites' y luego imprimirlo
//   var spriteValue = spritesPk2[1];
//print('Sprite value de pokemon2: $spriteValue');

// Obtener el valor de 'abilities' y convertirlo a List<String>
//   List<String> abilities = pokemon2['abilities'] as List<String>;
// print(abilities[0]);

//   var abilities2 = pokemon2['abilities'] as List<String>;

//print(abilities2[1]);

// Obtener el mapa de sprites
//   Map<int, String> sprites = (pokemon3['sprites'] as Map).cast<int, String>();

// Iterar a través de los sprites e imprimir cada valor
//   sprites.forEach((key, value) {
//print('Sprite de pokemon 3 $key: $value');
//   });

// print(sprites[1]);
// Obtener la lista de abilities
//   List<String> abilities3 = (pokemon3['abilities'] as List).cast<String>();

// Imprimir cada valor de ability
//   abilities3.forEach((ability) {
// print('Ability: $ability');
//   });

//print(abilities3[0]);

//   dynamic value =
//       "Hola, mundo"; // Un valor dinámico con un tipo inicial de String

// Intentamos convertir 'value' al tipo int usando 'as'
//   try {
//     int intValue = value as int;
//print("El valor es un entero: $intValue");
//   } catch (e) {
//  print("Error obtenido: $e");
//   }

// Convertimos 'value' al tipo String usando 'as'
//   String stringValue = value as String;
//  print("El valor es una cadena: $stringValue");

// listados

//   final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 9, 10];
//   print('Listado de numeros $numbers');
//   print('Cantidad de numeros ${numbers.length}');

//   final numerosMayores5 = numbers.where((int numero) {
//     return numero > 5;
//   });

//   print(numerosMayores5);

//   final numerosMayor = numbers.where((int numero) => numero > 5);

//   print(numerosMayor);

//   final numerosMayores = numbers.where(isGreaterThan5);

//   print(numerosMayores.toList());

//   final numerosMay = numbers.where(isGreaterThanFive);

//   print(numerosMay.toList());

//   numbers.forEach(printListNombers);
}

bool isGreaterThan5(int numero) {
  return numero > 5;
}

void printListNombers(int number) => print(number);
bool isGreaterThanFive(int numero) => numero > 5;

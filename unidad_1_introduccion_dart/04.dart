void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  // print('Listado: $numbers');
  // print('tamaño: ${numbers.length}');
  // print('Inde 0: ${numbers[0]}');
  // print('First: ${numbers.first}');
  // print('Alreves: ${numbers.reversed}');

  // final reverseNumbers = numbers.reversed;

  // print('Iterable: ${reverseNumbers.toList()}');
  // print('List: ${reverseNumbers.toList()}');
  // print('Set {}: ${reverseNumbers.toSet()}');
  // print('Array []: ${reverseNumbers.toSet().toList().reversed.toList()}');
  // print('Iterable (): ${reverseNumbers}');

  final resultNumberGreaterThan5 = numbers.where(numberIsGreaterThanFive);
  final numberSmallerThan5 = numbers.where(numberIsSmallerThanFive);
  final numbersEqualsThan5 = numbers.where((int number) => number == 5);
  print(resultNumberGreaterThan5);
  print(numberSmallerThan5);
  print(numbersEqualsThan5);
}

bool numberIsGreaterThanFive(int number) => number > 5;
bool numberIsSmallerThanFive(int number) => number < 5;
bool numberIsEqualsThanFive(int number) => number == 5;

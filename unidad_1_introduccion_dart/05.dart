void main() {
  // final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  // print('Listado: $numbers');
  // print('tamaño: ${numbers.length}');
  // print('Inde 0: ${numbers[0]}');
  // print('First: ${numbers.first}');
  // print('Alreves: ${numbers.reversed}');

  // final reverseNumbers = numbers.reversed;

  // print('Iterable: ${reverseNumbers.toList()}');
  // print('List: ${reverseNumbers.toList()}');
  // print('Set: ${reverseNumbers.toSet()}');
  // print('Set: ${reverseNumbers.toSet().toList().reversed.toSet()}');

  // final resultNumberGreaterThan5 = numbers.where(numberIsGreaterThanFive);
  // final numberSmallerThan5 = numbers.where(numberIsSmallerThanFive);
  // print(resultNumberGreaterThan5);
  // print(numberSmallerThan5);
  // print('suma de dos numeros:${sumaDeDosNumero(1, 2)}');
  // print('suma de dos numeros:${sumaDeDosNumero(1.5, 2.6)}');
  // print('suma de dos numeros:${sumaDeDosNumero2(1)}');
  // print(cadenaEnviar());
  // print(cadenaEnviar(name: 'jose', message: 'Que tal'));
  // print(cadenaEnviar(name: 'jose', message: 'Como estas?'));
  // print(cadenaEnviar(message: 'Que tal'));
  // print(cadenaEnviar(message:'Que tal',name:'jose'));

  print(sumaDeDosNumero4(2));
}

bool numberIsGreaterThanFive(int number) => number > 5;
bool numberIsSmallerThanFive(int number) => number < 5;
num sumaDeDosNumero(num primernumero, num segundoNumero) =>
    primernumero + segundoNumero;

num sumaDeDosNumero2(num primernumero, [num? segundoNumero]) {
  print('que biene en le segundo numero: $segundoNumero');
  segundoNumero = segundoNumero ??
      0; // intentando de que si no viene nada  osea null tengo un valor
  print('que biene ahora en le segundo numero: $segundoNumero');
  return primernumero + segundoNumero;
}

num sumaDeDosNumero3(num primernumero, [num? segundoNumero]) {
  print('que biene en le segundo numero: $segundoNumero');
  segundoNumero ??=
      3; // intentando de que si no viene nada  osea null tengo un valor
  print('que biene ahora en le segundo numero: $segundoNumero');
  return primernumero + segundoNumero;
}

//argumento por posicion
num sumaDeDosNumero4(num primernumero, [num segundoNumero = 0]) =>
    primernumero + segundoNumero;

//solicitar infrmacion por argumento por nombre
String cadenaEnviar({String name = 'Invitado', String message = 'Hola,'}) {
  return ' $message $name';
}

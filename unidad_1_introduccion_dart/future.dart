// void main() {
//   print('iniciando programa');
//   httGet('wiii').then((value) => print(value));
//   httGet2('wiii')
//       .then((value) => print(value))
//       .catchError((error) => print(error));
//   print('terminando programa');

// }

// void main() async {
//   print('iniciando programa');
//   final value = await httGet('wiii');
//   print(value);

//   print('terminando programa');
//   try {
//     final value2 = await httGet2('wiii');
//     print(value2);
//   } catch (e) {
//     print(e);
//   }
// }

Future<String> httGet(String url) =>
    Future.delayed(Duration(seconds: 2), () => 'respuesta de la petición http');

Future<String> httGet2(String url) =>
    Future.delayed(Duration(seconds: 1), () => throw 'Error no funciona');

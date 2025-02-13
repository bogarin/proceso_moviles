//mixing

enum TipoSangre { Azul, Roja }

abstract class Animal {
  TipoSangre _sangre;
  Animal(this._sangre);
  get getSangre => _sangre.toString();
  String WhatUName(String name) => 'My name is: $name';
  void appellido() => print('filomeno');
  // void raza();
}

abstract class Mamifero extends Animal {
  Mamifero() : super(TipoSangre.Roja);
  void edad() => print(33);
}

abstract class Ave extends Animal {
  Ave() : super(TipoSangre.Roja);
}

abstract class Pez extends Animal {
  Pez() : super(TipoSangre.Azul);
}

mixin Volador {
  void vuela() => print('estoy volando!!!!');
}

mixin Caminante {
  void caminando() => print('estoy caminando!!!!');
}

mixin Nadador {
  void nadando() => print('estoy nadando!!!!');
}

class Delfin extends Mamifero with Nadador {
  @override
  String WhatUName(String nombre) => 'Este lindo Delfín se llama: $nombre';
}

class Murcielago extends Mamifero with Volador, Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {
  @override
  String WhatUName(String nombre) => 'Este lindo Pato se llama: $nombre';
}

void main() {
  final flipper = Delfin();
  print(flipper.getSangre.toString());
  flipper.nadando();
  flipper.edad();
  print(flipper.WhatUName('Flipper'));
  flipper.appellido();
  final lucas = Pato();
  lucas.caminando();
  lucas.nadando();
  lucas.vuela();
  print(lucas.WhatUName('Lucas'));
}

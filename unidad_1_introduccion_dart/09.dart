void main() {
  final mySquare = Square(side: -10);
  print(mySquare.area);
  print(mySquare.side);
  mySquare.side = -1;
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0,'side must be >=0'),
        _side = side;

  double get area => _side * _side;
  double get side => _side;

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >0';
    _side = value;
  }
}
//  patrón de diseño Builder
// Paso 1: Definir la clase del objeto que se construirá
class Producto {
  final String _nombre;
  final String _descripcion;
  final double _precio;

  Producto(String nombre, String descripcion, double precio)
      : _nombre = nombre,
        _descripcion = descripcion,
        _precio = precio;

  String get nombre => _nombre;
  String get descripcion => _descripcion;
  double get precio => _precio;
}

// Paso 2: Crear una clase Builder para construir el objeto
class ProductoBuilder {
  String nombre = '';
  String descripcion = '';
  double precio = 0.0;

// La razón principal para devolver la instancia actual (this) es permitir el 
// encadenamiento de llamadas. Esto significa que puedes llamar a varios métodos 
// de configuración uno tras otro en una sola línea de código
  ProductoBuilder setNombre(String nombre) {
    this.nombre = nombre;
    return this;
  }

  ProductoBuilder setDescripcion(String descripcion) {
    this.descripcion = descripcion;
    return this;
  }

  ProductoBuilder setPrecio(double precio) {
    this.precio = precio;
    return this;
  }

  Producto build() {
    return Producto(nombre, descripcion, precio);
  }
}

// Paso 3: Utilizar el Builder para construir objetos
void main() {
  final producto1 = ProductoBuilder()
      .setNombre('Producto 1')
      .setDescripcion('Descripción del Producto 1')
      .setPrecio(29.99)
      .build();

  final producto2 = ProductoBuilder()
      .setNombre('Producto 2')
      .setDescripcion('Descripción del Producto 2')
      .setPrecio(49.99)
      .build();
  
    final producto3 = ProductoBuilder()
      .setNombre('Producto 2')
      .setDescripcion('Descripción del Producto 2')
      .build();

  print(
      'Producto 1: ${producto1.nombre}, ${producto1.descripcion}, \$${producto1.precio}');
  print(
      'Producto 2: ${producto2.nombre}, ${producto2.descripcion}, \$${producto2.precio}');
  print(
      'Producto 3: ${producto3.nombre}, ${producto3.descripcion}, \$${producto3.precio}');
}
---
marp: true
paginate: true
theme: default
class: invert
---

# 🚀 Future y Stream en Dart

## Programación asincrónica explicada con ejemplos

---

## 🤔 ¿Qué es un `Future`?

Un `Future<T>` representa **un valor o error que estará disponible en el futuro**.

```dart
Future<String> obtenerMensaje() async {
  return "Hola, Dart!";
}

void main() async {
  String mensaje = await obtenerMensaje();
  print(mensaje);
}
```

📌 **Ejemplo en la vida real:** Pedir comida en un restaurante 🍔

- Haces el pedido (`Future` inicia)
- Esperas (`await`)
- Te entregan la comida (`Future` completado)

---

## 🔹 `async` y `await`

Permiten manejar `Future` de manera sencilla y legible.

```dart
Future<void> tarea() async {
  print("Esperando...");
  await Future.delayed(Duration(seconds: 2));
  print("¡Listo!");
}

void main() {
  tarea();
  print("Sigo ejecutando otras tareas...");
}
```

🛠 **Caso real:** Descargando un archivo 📂 mientras sigues usando la app.

---

## 🔥 ¿Qué es un `Stream`?

Un `Stream<T>` es una secuencia de datos que llegan con el tiempo (como una lista, pero asincrónica).

```dart
Stream<int> contar() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (var num in contar()) {
    print(num);
  }
}
```

📌 **Ejemplo en la vida real:** Notificaciones en una app 📱

- Cada nueva notificación se emite con `yield`.

---

## 🚀 `async*` para Streams dinámicos

Cuando necesitas generar múltiples valores asincrónicamente.

```dart
Stream<String> frases() async* {
  yield "Hola";
  await Future.delayed(Duration(seconds: 1));
  yield "¿Cómo estás?";
  await Future.delayed(Duration(seconds: 1));
  yield "Espero que estés aprendiendo Dart.";
}

void main() async {
  await for (var frase in frases()) {
    print(frase);
  }
}
```

📌 **Caso real:** Datos en tiempo real 📊 (ej. sensor de temperatura, precios de bolsa 🏦).

---

## 🎯 Diferencias clave

| Característica  | `Future` | `Stream` |
|---------------|---------|--------|
| Valor único | ✅ | ❌ |
| Múltiples valores | ❌ | ✅ |
| `await` para obtener datos | ✅ | ❌ (se usa `await for`) |
| Uso común | Tareas únicas (ej. obtener datos de una API) | Flujos de datos (ej. eventos en tiempo real) |

---

## 🔥 Recapitulación

✅ `Future`: representa un valor futuro.  
✅ `async` y `await`: hacen código asincrónico más legible.  
✅ `Stream`: flujo de datos asincrónicos.  
✅ `async*`: permite generar streams dinámicos.  

💡 **Dart hace la programación asincrónica fácil y potente!**

---

## 🚀 ¡A practicar

¿Listo para aplicar lo aprendido? Prueba implementando un `Stream` que simule actualizaciones del clima. 🌤

```dart
Stream<String> clima() async* {
  List<String> estados = ["Soleado", "Nublado", "Lluvioso", "Tormenta"];
  while (true) {
    await Future.delayed(Duration(seconds: 2));
    yield estados[Random().nextInt(estados.length)];
  }
}

void main() async {
  await for (var estado in clima()) {
    print("Clima actual: $estado");
  }
}
```

📌 **Caso real:** Notificaciones de clima en una app meteorológica. ☀️

---

## 📢 Preguntas y comentarios

¿Dudas? ¡Hablemos de programación asincrónica en Dart! 🚀

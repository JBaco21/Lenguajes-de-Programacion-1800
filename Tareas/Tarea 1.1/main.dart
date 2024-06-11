// Ejercicio 1: Clase para representar un círculo
class Circulo {

  double radio;
  String color;

  Circulo(this.radio, this.color);

  double calcularArea() {
    return 3.14159 * radio * radio;
  }

  double calcularPerimetro() {
    return 2 * 3.14159 * radio; 
  }
}

// Ejercicio 2: Lista de Tareas
class Tarea {
  String titulo;
  String descripcion;
  bool completada;

  Tarea(this.titulo, this.descripcion, this.completada);

  void completar() {
    completada = true;
  }
}

class ListaDeTareas {
  // Lista de tareas
  List<Tarea> tareas = [];

  void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
  }

  void eliminarTarea(Tarea tarea) {
    tareas.remove(tarea);
  }

  void completarTarea(Tarea tarea) {
    int index = tareas.indexOf(tarea);
    if (index != -1) {
      tareas[index].completar();
    }
  }
}

void main() {
  // ----- Ejercicio 1 -----

  Circulo circulo = Circulo(5.0, 'rojo');

  print('----- Ejercicio 1: Círculo -----');
  print('Área del círculo: ${circulo.calcularArea()}');
  print('Perímetro del círculo: ${circulo.calcularPerimetro()}');

  // ----- Ejercicio 2 -----
 
  ListaDeTareas lista = ListaDeTareas();

  Tarea tarea1 = Tarea('Estudiar Dart', 'Estudiar la documentación oficial de Dart.', false);
  Tarea tarea2 = Tarea('Hacer ejercicio', 'Correr 5 kilómetros.', false);

  lista.agregarTarea(tarea1);
  lista.agregarTarea(tarea2);

  lista.completarTarea(tarea1);

  print('----- Ejercicio 2: Lista de Tareas -----');
  for (Tarea tarea in lista.tareas) {
    print('Tarea: ${tarea.titulo}, Completa: ${tarea.completada}');
  }
}
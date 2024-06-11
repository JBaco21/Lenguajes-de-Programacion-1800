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
  ListaDeTareas lista = ListaDeTareas();

  Tarea tarea1 = Tarea('Estudiar Dart', 'Estudiar la documentación oficial de Dart.', false);
  Tarea tarea2 = Tarea('Hacer ejercicio', 'Correr 5 kilómetros.', false);

  lista.agregarTarea(tarea1);
  lista.agregarTarea(tarea2);

  lista.completarTarea(tarea1);

  for (Tarea tarea in lista.tareas) {
    print('Tarea: ${tarea.titulo}, Completa: ${tarea.completada}');
  }
}

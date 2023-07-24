import 'dart:async';

class NavigationBloc {
  NavigationBloc() {
    _indexController.add(0);
  }

  int _mainIndex = 0;
  final StreamController<int> _indexController = StreamController<int>();
  Stream<int> get indexStream => _indexController.stream;

  // Método para actualizar los datos y emitirlos a través del StreamController
  void navigate(int value) {
    _mainIndex = value;
    _indexController.add(_mainIndex);
  }

  // Método para cerrar el StreamController al finalizar
  void dispose() {
    _indexController.close();
  }
}

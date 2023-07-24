import 'dart:async';
import '../model/login_data.dart';
import '../model/login_view_state.dart';
import 'package:rxdart/rxdart.dart';


class AuthBloc {

  final BehaviorSubject<LoginViewState> _loginViewSubject = BehaviorSubject<LoginViewState>.seeded(LoginViewState(isPasswordVisible: false));
  final BehaviorSubject<LoginData> _loginDataSubject = BehaviorSubject<LoginData>.seeded(LoginData(username: "", password: ""));

  Stream<LoginViewState> get loginViewStream => _loginViewSubject.stream;
  Stream<LoginData> get loginDataStream => _loginDataSubject.stream;

  void setUsername(String username) {
    _loginDataSubject.value.username = username;
    _loginDataSubject.add(_loginDataSubject.value);
  }

  void setPassword(String password) {
    _loginDataSubject.value.password = password;
    _loginDataSubject.add(_loginDataSubject.value);
  }

  void togglePasswordVisibility() {
    _loginViewSubject.value.isPasswordVisible = !_loginViewSubject.value.isPasswordVisible;
    _loginViewSubject.add(_loginViewSubject.value);
  }

  // Método para cerrar los StreamController al finalizar
  void dispose() {
    _loginViewSubject.drain();
    _loginDataSubject.drain();
  }

  void login() {
    print("*******");
    print(_loginDataSubject.value.username);
    print(_loginDataSubject.value.password);
  }
}

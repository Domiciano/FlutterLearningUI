import 'dart:async';

class AuthBloc{

  final LoginState _loginState = LoginState("", "");

  AuthBloc(){
    _loginStream.add(_loginState);
  }

  final StreamController<LoginState> _loginStream = StreamController<LoginState>();
  Stream<LoginState> get loginStream => _loginStream.stream;

  void setUsername(String username) {
    _loginState.username = username;
  }

  void setPassword(String password) {
    _loginState.password = password;
  }


  // Método para cerrar el StreamController al finalizar
  void dispose() {
    _loginStream.close();
  }

  void login() {
    print("*******");
    print(_loginState.username);
    print(_loginState.password);
  }

}

class LoginState{
  LoginState(this.username, this.password);
  String username;
  String password;
  bool passwordIsVisible = false;
}


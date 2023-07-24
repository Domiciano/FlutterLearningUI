import 'package:flutter/material.dart';
import 'package:ui_learning/src/blocs/auth_bloc.dart';
import 'package:ui_learning/src/screens/main_screen.dart';
import 'package:ui_learning/src/widgets/pass_input.dart';
import 'package:ui_learning/src/widgets/social_card.dart';
import '../layout/colors.dart';
import '../widgets/circle_button.dart';
import '../widgets/main_button.dart';
import '../widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthBloc _authBloc = AuthBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: body(context),
      ),
    );
  }

  Widget body(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: backgroundGradient,
        child: Column(
          children: [
            Expanded(child: Container()),
            const Image(
              image: AssetImage('assets/cisco.png'),
              width: 240.0,
              height: 180.0,
            ),
            Container(
              margin: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  TextInput(
                    hint: "Correo electrónico",
                    onChanged: (value) {
                      _authBloc.setUsername(value);
                    },
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  StreamBuilder(
                    stream: _authBloc.loginViewStream,
                    builder: (context, snapshot) {
                      return PasswordInput(
                          onVisibilityChanged: () {
                            _authBloc.togglePasswordVisibility();
                          },
                          visible: snapshot.data?.isPasswordVisible ?? false,
                          hint: 'Password',
                          onChanged: (value) {
                            _authBloc.setPassword(value);
                          });
                    },
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  MainButton(
                      text: "INICIAR SESIÓN",
                      onClick: () {
                        _authBloc.login();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                      }),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿Olvidaste tu contraseña? ", style: whiteTextStyle),
                GestureDetector(
                    onTap: () {
                      print("Al");
                    },
                    child: const Text("Solicítala aquí",
                        style: whiteBoldTextStyle))
              ],
            ),
            Expanded(child: Container()),
            Row(
              children: [
                const SizedBox(width: 32),
                Expanded(
                    child: Container(
                        height: 2,
                        decoration: const BoxDecoration(color: Colors.white))),
                const SizedBox(width: 8),
                const Text("Redes sociales", style: whiteBoldTextStyle),
                const SizedBox(width: 8),
                Expanded(
                    child: Container(
                        height: 2,
                        decoration: const BoxDecoration(color: Colors.white))),
                const SizedBox(width: 32),
              ],
            ),
            const Text(
              "También puede iniciar sesión con una cuenta de Google, Facebook o Email",
              textAlign: TextAlign.center,
              style: whiteTextStyle,
            ),
            const SocialCard(children: [
              CircleButton(
                title: "GOOGLE",
                asset: 'google.png',
              ),
              CircleButton(
                title: "EMAIL",
                asset: 'email.png',
              ),
              CircleButton(
                title: "FACEBOOK",
                asset: 'facebook.png',
              ),
            ])
          ],
        ));
  }
}

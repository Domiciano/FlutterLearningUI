import 'package:flutter/material.dart';
import 'package:ui_learning/src/widgets/pass_input.dart';
import 'package:ui_learning/src/widgets/social_card.dart';
import '../layout/colors.dart';
import '../widgets/circle_button.dart';
import '../widgets/main_button.dart';
import '../widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundGradient,
        child: Column(
          children: [
            Expanded(child: Container()),
            const Image(
              image: AssetImage('assets/cisco.png'),
              width: 240.0,
              height: 240.0,
            ),
            Container(
              margin: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  TextInput(hint: "Correo electrónico"),
                  SizedBox(
                    height: 16.0,
                  ),
                  PasswordInput(hint: 'Password'),
                  const SizedBox(
                    height: 32.0,
                  ),
                  const MainButton(text: "INICIAR SESIÓN"),
                ],
              ),
            ),
            SizedBox(height: 24.0),
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
                SizedBox(width: 32),
                Expanded(child: Container(height: 2, decoration: BoxDecoration(color: Colors.white))),
                SizedBox(width: 8),
                const Text("Redes sociales", style: whiteBoldTextStyle),
                SizedBox(width: 8),
                Expanded(child: Container(height: 2, decoration: BoxDecoration(color: Colors.white))),
                SizedBox(width: 32)
              ],
            ),

            
            SizedBox(height: 16),
            const Text(
              "También puede iniciar sesión con una cuenta de Google, Facebook o Email",
              textAlign: TextAlign.center,
              style: whiteTextStyle,
            ),
            SizedBox(height: 16),
            SocialCard(children: [
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
        ),
      ),
    );
  }
}

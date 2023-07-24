import 'package:flutter/material.dart';
import 'layout/themes.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: appBarTheme,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 26, 89, 173)),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}

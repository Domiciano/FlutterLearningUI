import 'package:flutter/material.dart';
import 'package:ui_learning/src/screens/chat_screen.dart';
import 'package:ui_learning/src/screens/profile_screen.dart';
import 'package:ui_learning/src/screens/world_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> _screens = [
    const ProfileScreen(),
    const WorldScreen(),
    const ChatScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/cisco.png",
          height: 32,
        ),
        automaticallyImplyLeading: false,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        children: _screens, // Evita deslizar entre pantallas
        controller: PageController(initialPage: 2), // Establece la página inicial
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Índice inicial (pantalla activa)
        onTap: (index) {
          // Cambiar de pantalla al tocar un ícono de la barra de navegación
          // El índice representa la posición de la pantalla en la lista _screens
          // 0: Screen1, 1: Screen2, 2: Screen3
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'World',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}

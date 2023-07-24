import 'package:flutter/material.dart';
import 'package:ui_learning/src/blocs/navigation_bloc.dart';
import 'package:ui_learning/src/screens/chat_screen.dart';
import 'package:ui_learning/src/screens/profile_screen.dart';
import 'package:ui_learning/src/screens/world_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final NavigationBloc bloc = NavigationBloc();

  final List<Widget> _screens = [
    const ProfileScreen(),
    const WorldScreen(),
    const ChatScreen()
  ];



  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.indexStream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Center( child: Image.asset('assets/cisco.png', height: 32)),
              automaticallyImplyLeading: false,
            ),
            body: getScreenAt(snapshot.data ?? 0),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: snapshot.data ?? 0, // Índice inicial (pantalla activa)
              onTap: (index) {
                bloc.navigate(index);
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
        });
  }

  Widget getScreenAt(int i) {
    return _screens[i];
  }
}

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

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.indexStream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Image.asset('assets/cisco.png', height: 32),
              automaticallyImplyLeading: false,
            ),
            body: getScreenAt(snapshot.data!),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: snapshot.data!, // Índice inicial (pantalla activa)
              onTap: (index) {
                bloc.navigate(index);
                pageController.jumpToPage(index);
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

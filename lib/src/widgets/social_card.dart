import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget{
  

  const SocialCard({super.key, required this.children});

  final List<Widget> children;
  
  
  @override
  Widget build(BuildContext context) {
    return Card(
              color: const Color.fromARGB(115, 60, 60, 60),
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0))),
              child: Container(
                margin: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: children,
                ),
              ),
            );
  }

}
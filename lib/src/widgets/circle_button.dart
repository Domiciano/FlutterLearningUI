import 'package:flutter/material.dart';
import 'package:ui_learning/src/layout/colors.dart';

class CircleButton extends StatelessWidget {
  
  const CircleButton({super.key, required this.title, required this.asset});

  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
                onTap: (){
                  print("Click");
                },
                child: Image(
                  image: AssetImage('assets/$asset'),
                  width: 48.0,
                  height: 48.0,
                )),
                const SizedBox(height: 8),
                Text(title, style: whiteTextStyle),
          ],
        ));
  }
}

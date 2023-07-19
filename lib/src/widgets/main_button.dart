import 'package:flutter/material.dart';
import 'package:ui_learning/src/widgets/social_card.dart';
import '../layout/colors.dart';
import '../widgets/circle_button.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          print("Click");
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: mainButtonGradient,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16, left: 0, right: 0),
              child: Text(text, style: whiteBoldTextStyle,),
            ),
          ),
        ));
  }
}

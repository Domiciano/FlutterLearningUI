import 'package:flutter/material.dart';

import '../layout/colors.dart';

class TextInput extends StatelessWidget {
  TextInput({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white, width: 1.0), // Borde negro de 2.0 de ancho
          ),
          child: Image.asset('assets/usericon.png', width: 8, height: 8,), // Ruta de la imagen
        ),
        SizedBox(width: 8,),
        Expanded(
            child: TextField(
                style: whiteTextStyle,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: hint,
                    hintStyle: greyTextStyle)))
      ],
    );
  }
}

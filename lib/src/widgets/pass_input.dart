import 'package:flutter/material.dart';

import '../layout/colors.dart';

class PasswordInput extends StatelessWidget {
  PasswordInput({super.key, required this.hint, required this.onChanged});

  final String hint;
  final Function(String value) onChanged;

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
            border: Border.all(
                color: Colors.white, width: 1.0), // Borde negro de 2.0 de ancho
          ),
          child: Image.asset(
            'assets/passicon.png',
            width: 8,
            height: 8,
          ), // Ruta de la imagen
        ),
        const SizedBox(width: 8),
        Expanded(
            child: TextField(
          onChanged: onChanged,
          obscureText: true,
          style: whiteTextStyle,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: greyTextStyle,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 0)),
        )),
        const SizedBox(width: 8),
        Container(
          width: 48,
          height: 48,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.black26),
          child: Image.asset(
            'assets/eyeicon.png',
            width: 8,
            height: 8,
          ), // Ruta de la imagen
        ),
      ],
    );
  }
}

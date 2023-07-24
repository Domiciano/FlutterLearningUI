import 'package:flutter/material.dart';

import '../layout/colors.dart';

class TextInput extends StatelessWidget {
  TextInput({super.key, required this.hint, required this.onChanged});

  final String hint;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white, width: 1.0),
          ),
          child: Image.asset(
            'assets/usericon.png',
            width: 8,
            height: 8,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
            child: TextField(
                onChanged: onChanged,
                style: whiteTextStyle,
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: hint,
                    hintStyle: greyTextStyle)))
      ],
    );
  }
}

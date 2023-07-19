import 'package:flutter/material.dart';

const backgroundGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 47, 50, 51),
      Color.fromARGB(255, 106, 108, 116)
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
);

const mainButtonGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 71, 158, 213),
    Color.fromARGB(255, 61, 187, 200)
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);


const greyTextStyle = TextStyle(color: Color.fromARGB(255, 160, 160, 160));
const whiteTextStyle = TextStyle(color: Color.fromARGB(255, 255, 255, 255));
const whiteBoldTextStyle = TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold);

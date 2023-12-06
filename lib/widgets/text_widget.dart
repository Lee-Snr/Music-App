import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const TextWidget({super.key, required this.text, required this.color, required this.size, required this.fontWeight, required this.textAlign, required String fontFamily});



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: Colors.black,
        fontSize: size,
      ),
    );
  }

}
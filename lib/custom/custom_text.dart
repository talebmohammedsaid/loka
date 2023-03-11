import 'package:flutter/material.dart';



class CustomText extends StatelessWidget {
   CustomText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.height = 1
  });
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          height: height,
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
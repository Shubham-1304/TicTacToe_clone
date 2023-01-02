import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow>? shadow;
  final String? text;
  final double? fontSize;
  CustomText({
    @required this.text,
    @required this.shadow,
    @required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    
    return Text(
      text!,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        shadows: shadow,
        fontSize: fontSize,
      ),
    );
  }
}

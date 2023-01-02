import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;
  CustomButton({
    @required this.label,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.blue,
          blurRadius: 4,
          spreadRadius: 1,
          
        ),]
      ),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(label!,style: TextStyle(fontSize: 18),),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            width,
            50,
          ),
        ),
      ),
    );
  }
}

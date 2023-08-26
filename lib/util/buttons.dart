import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final Color color;
  final double myFontSize;
  final VoidCallback myItemCountHandler;

  const MyButtons(
      {super.key,
      required this.text,
      required this.color,
      required this.myFontSize,
      required this.myItemCountHandler});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myItemCountHandler,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  fontSize: myFontSize,
                  color: color,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

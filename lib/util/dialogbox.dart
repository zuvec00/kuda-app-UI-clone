import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        alignment: Alignment.bottomCenter,
        backgroundColor: Colors.grey[900],
        content: Container(
          height: 100,
          child: Row(
            children: [
              Text('Hide Balances'),
              
            ],
          ),
        ));
  }
}

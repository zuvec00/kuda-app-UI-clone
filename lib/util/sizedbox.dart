import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  final proportion;
   MySizedBox(@required this.proportion,);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(height:size.width*proportion);
  }
}
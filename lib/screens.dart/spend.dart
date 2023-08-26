import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app/screens.dart/Material%20Routes/addMoney.dart';
import 'package:kuda_app/util/customCont.dart';
import 'package:kuda_app/util/sizedbox.dart';

import '../util/dialogbox.dart';

class Spend extends StatefulWidget {
  @override
  State<Spend> createState() => _SpendState();
}

class _SpendState extends State<Spend> {
  bool hideBalance = true;

  void _hideBalanceHandler() {
    setState(() {
      hideBalance = !hideBalance;
    });
  }

  void _hideBalanceDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySizedBox(0.06),
        Row(
          children: const [
            Text('🇳🇬'),
            Text(' Account Balance',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(190, 158, 158, 158),
                ))
          ],
        ),
        SizedBox(height: 0),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: _hideBalanceHandler,
            child: Blur(
                blur: hideBalance ? 10 : 0.0,
                colorOpacity: hideBalance ? 0.1 : 0,
                borderRadius: BorderRadius.circular(2),
                child: Text('#1900.00',
                    style: GoogleFonts.lato(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: hideBalance ? Colors.grey[900] : Colors.grey[200],
                    ))),
          ),
          IconButton(
              onPressed: _hideBalanceDialog,
              icon: Icon(Icons.more_horiz_rounded,
                  size: 28, color: Colors.grey[200]))
        ]),
        MySizedBox(0.075),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddMoney()));
          },
          child: Container(
              width: 190,
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[900],
              ),
              child: Row(children: [
                Icon(Icons.add_circle_rounded, color: Colors.grey[200]),
                const SizedBox(width: 5),
                Text('Add Money',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ])),
        ),
        SizedBox(height: 20),
        CustomCont2(),
        MySizedBox(0.02),
        CustomCont3(),
        MySizedBox(0.05),
        Text('Recent Transactions',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CustomCont4();
                }))
      ],
    );
  }
}

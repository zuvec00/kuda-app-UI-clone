import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/dialogbox.dart';
import '../util/sizedbox.dart';
import 'Material Routes/addMoney.dart';

class Save extends StatefulWidget {
  @override
  State<Save> createState() => _SaveState();
}

class _SaveState extends State<Save> {
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
            Text(' Total Balance',
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
                child: Text('#37,900.00',
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
                Text('Save Now',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ])),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

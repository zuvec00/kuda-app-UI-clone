import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app/screens.dart/borrow.dart';
import 'package:kuda_app/screens.dart/save.dart';
import 'package:kuda_app/screens.dart/spend.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: TabBar(
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Color.fromARGB(190, 158, 158, 158),
          labelStyle:
              GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold),
          labelPadding: EdgeInsets.symmetric(horizontal: 8),
          tabs: [
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[900],
                ),
                child: const Center(
                  child: Text('Spend'),
                )),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[900],
                ),
                child: const Center(
                  child: Text('Save'),
                )),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[900],
                ),
                child: const Center(
                  child: Text('Borrow'),
                )),
          ],
        ),
      ),
      Expanded(
        child: TabBarView(
          children: [
            Spend(),
            Save(),
            Borrow(),
          ],
        ),
      )
    ]);
  }
}

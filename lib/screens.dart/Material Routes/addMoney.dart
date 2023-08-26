import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app/util/customCont.dart';

class AddMoney extends StatelessWidget {
  final List addMoneyList = [
    [
      'Share your @Userna...',
      'Recieve money from other Kuda users with your unique Username.'
    ],
    ['USSD', 'With you other bank\'s USSD code.'],
    ['Bank Transfer', 'From bank app or internet banking.'],
    ['Card', 'Add money with a debit card.'],
    ['Payonner', 'Withdraw from your Payonner account.'],
    ['Cash Deposit', 'Deposit cash at our partner banks.'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(235, 14, 14, 14),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 12, 12, 12),
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded)),
            title: Text('Add Money',
                style: GoogleFonts.lato(fontWeight: FontWeight.bold))),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
                  itemCount: addMoneyList.length,
                  itemBuilder: ((context, index) => CustomCont(
                      title: addMoneyList[index][0],
                      description: addMoneyList[index][1]))))
        ]));
  }
}

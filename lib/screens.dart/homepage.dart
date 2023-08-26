import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kuda_app/screens.dart/bottom.dart';
import 'package:kuda_app/util/buttons.dart';
import 'package:kuda_app/util/greenCont.dart';
import 'package:kuda_app/util/sizedbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _myItemCount = 0;

  void _myItemAddHandler() {
    if (_myItemCount < 6) {
      setState(() {
        _myItemCount++;
      });
    } else if(_myItemCount==6) {
      Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => Bottom(),
          ));
    }
  }

  void _myItemSubHandler() {
    setState(() {
      _myItemCount--;
    });
  }

  final List keyPad = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'Sign Out',
    '0',
    'Delete'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(235, 14, 14, 14),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Expanded(
                child: Column(children: [
                  MySizedBox(0.1),
                  Container(
                    width: size.width * 0.25,
                    height: size.width * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                  ),
                  MySizedBox(0.03),
                  const Text('Welcome Back',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  MySizedBox(0.01),
                  const Text('Prince Ibekwe', style: TextStyle(fontSize: 16)),
                  MySizedBox(0.1),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.lock_rounded,
                            size: 16, color: Colors.greenAccent),
                        Text(' Passcode', style: TextStyle(fontSize: 16))
                      ]),
                  MySizedBox(0.035),
                  Container(
                    width: 185,
                    height: 40,
                    child: Center(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: (_myItemCount >= 0)
                              ? _myItemCount
                              : _myItemCount = 0,
                          itemBuilder: (context, index) {
                            return GreenCont();
                          }),
                    ),
                  ),
                ]),
              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 1 / 0.72),
                      shrinkWrap: true,
                      itemCount: keyPad.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MyButtons(
                            text: keyPad[index],
                            color: (index == 9 || index == keyPad.length - 1)
                                ? Colors.greenAccent
                                : Colors.grey.shade200,
                            myFontSize:
                                (index == 9 || index == keyPad.length - 1)
                                    ? 16
                                    : 35,
                            myItemCountHandler: (index == keyPad.length - 1)
                                ? _myItemSubHandler
                                : _myItemAddHandler);
                      })),
            ])));
  }
}

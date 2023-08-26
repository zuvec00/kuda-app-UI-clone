import 'package:flutter/material.dart';
import 'package:kuda_app/util/sizedbox.dart';
import 'package:kuda_app/util/tabbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Color.fromARGB(235, 14, 14, 14),
            body: Column(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                    child: Column(children: [
                  MySizedBox(0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[300],
                            )),
                        const SizedBox(width: 10),
                        const Text('Hi, Prince',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))
                      ]),
                      Row(children: [
                        Icon(Icons.pie_chart_rounded,
                            size: 25, color: Colors.grey[200])
                      ]),
                    ],
                  ),
                  MySizedBox(0.05),
                  Expanded(child: MyTabBar()),
                ])),
              )),
            ])),
      ),
    );
  }
}

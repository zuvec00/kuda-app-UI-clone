import 'package:flutter/material.dart';
import 'package:kuda_app/screens.dart/Payment.dart';
import 'package:kuda_app/screens.dart/cards.dart';
import 'package:kuda_app/screens.dart/home.dart';
import 'package:kuda_app/screens.dart/invest.dart';
import 'package:kuda_app/screens.dart/more.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  void _selectIndex(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> widgetOptions = [
    Home(),
    Payment(),
    Invest(),
    Cards(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 14, 14, 14),
      body: widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectIndex(index);
            print(_selectedIndex);
          },
          iconSize: 25,
          backgroundColor: Colors.grey[900],
          unselectedItemColor: Color.fromARGB(190, 158, 158, 158),
          selectedItemColor: Colors.grey[200],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromARGB(190, 158, 158, 158),
                ),
                activeIcon: Icon(Icons.home_rounded),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.send_outlined,
                  color: Color.fromARGB(230, 117, 117, 117),
                ),
                activeIcon: Icon(Icons.send_rounded),
                label: 'Payments'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bar_chart_outlined,
                  color: Color.fromARGB(230, 117, 117, 117),
                ),
                activeIcon: Icon(Icons.bar_chart_rounded),
                label: 'Invest'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.payment_outlined,
                  color: Color.fromARGB(230, 117, 117, 117),
                ),
                activeIcon: Icon(Icons.payment_rounded),
                label: 'Cards'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: Color.fromARGB(230, 117, 117, 117),
                ),
                activeIcon: Icon(Icons.more_horiz_rounded),
                label: 'More'),
          ]),
    );
  }
}

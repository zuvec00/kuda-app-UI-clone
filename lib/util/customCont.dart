import 'package:flutter/material.dart';
import 'package:kuda_app/util/sizedbox.dart';

class CustomCont extends StatelessWidget {
  final String title;
  final String description;
  const CustomCont({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
      child: Container(
          padding: EdgeInsets.all(8),
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(5),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                SizedBox(width: size.width * 0.155),
                Text(title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(children: [
              Container(
                width: 30,
                height: 35,
                color: Color.fromARGB(190, 158, 158, 158),
              ),
              SizedBox(width: size.width * 0.07),
              Flexible(
                  fit: FlexFit.tight,
                  child: Text(description,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(190, 158, 158, 158),
                      ))),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[200], size: 28)
            ])
          ])),
    );
  }
}

class CustomCont2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[900],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.greenAccent,
                  )),
              Container(
                  width: 20,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ))),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Invite Friends',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              Text('Invite your friends to Kuda and',
                  style: TextStyle(
                    fontSize: 12,
                  )),
              Text('enjoy the bank for free.', style: TextStyle(fontSize: 12)),
            ],
          ),
          Icon(
            Icons.delete_forever_rounded,
            color: Color.fromARGB(255, 172, 172, 172),
          ),
        ]));
  }
}

//custom container3

class CustomCont3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[900],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Stack(alignment: Alignment.center, children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                )),
            Positioned(
              bottom: 1.5,
              right: 1.5,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber[400])),
            ),
            Icon(
              Icons.favorite_rounded,
              color: Colors.grey[200],
              size: 18,
            )
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Add your Next o...',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              Text('Add someone close or',
                  style: TextStyle(
                    fontSize: 12,
                  )),
              Text('someone you trust to take', style: TextStyle(fontSize: 12)),
              Text('care of your finances.', style: TextStyle(fontSize: 12)),
            ],
          ),
          Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.redAccent.shade100)),
              child: Text('Not Done',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)))
        ]));
  }
}

class CustomCont4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    shape: BoxShape.circle,
                  )),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(190, 158, 158, 158),
                          borderRadius: BorderRadius.circular(0))),
                  SizedBox(height: 5),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(190, 158, 158, 158),
                          borderRadius: BorderRadius.circular(0))),
                ],
              )
            ],
          )),
    );
  }
}

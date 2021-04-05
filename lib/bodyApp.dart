import 'dart:math';

import 'package:flutter/material.dart';

class BodyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BodyApp> {
  int leftDiceNumber = 1, rightDiceNumber = 1;
  // to choose random number to both dice when you pressed on any both them
  void randomNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
  // to edit distance between widgets
   distance()
  {
   return  SizedBox(height: 40,);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( "Click To Roll",
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              ),),
      distance(),

        Text(
          "Sum is ${(leftDiceNumber + rightDiceNumber).toString()}",
          style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.red),
        ),  distance(),

        Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
        distance(),
        Container(
          width: 200,
          height: 60,
          child: RaisedButton(
              child: Text(
                "ROLL",
                style: TextStyle(fontSize: 45),
              ),
              onPressed: () {
                setState(() {

                  randomNumber();
                });
              }),
        )
      ],
    );
  }
}

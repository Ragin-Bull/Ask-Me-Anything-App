import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask me Anything!'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var numberOnCard=1;
  void doesThings() {
      setState((){
        Random random = Random();
        numberOnCard = 1 + random.nextInt(4);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(
            onPressed: doesThings,
              child: Image.asset('images/ball$numberOnCard.png',),),
        )),
      ],
    );
  }
}

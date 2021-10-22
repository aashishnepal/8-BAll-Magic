import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MagicBall(),
    ),
  );
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask anything?'),
        backgroundColor: Colors.blue[600],
      ),
      backgroundColor: Colors.blue[400],
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballnum = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballnum.png'),
        ),
      ),
    );
  }
}

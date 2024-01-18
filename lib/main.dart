import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.blue.shade900,
       appBar: AppBar(
         title: Text('Ask Me Anything'),
         backgroundColor: Colors.blue,
         centerTitle: true,
       ),
       body: Ball(),
     ),
      ),
    );
  }
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
return Center(
  child: GestureDetector(
    onTap: (){
      setState(() {
        ballNumber = Random().nextInt(5) +1;
      });
    },
    child: Image.asset('images/ball$ballNumber.png'),
  )
    );
  }
}


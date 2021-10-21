import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'dart:math';

void main() => runApp(XylophoneApp());

void playing(int newnote) {
  final player = AudioCache();
  // int newnote = Random().nextInt(7) + 1;

  player.play('note$newnote.wav');
}

Expanded buildKey({Color color, int number}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        playing(number);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hey'),
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.blue, number: 2),
              buildKey(color: Colors.orange, number: 3),
              buildKey(color: Colors.yellow, number: 4),
              buildKey(color: Colors.black, number: 5),
              buildKey(color: Colors.purple, number: 6),
              buildKey(color: Colors.pink, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}

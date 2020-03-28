import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playSound(int soundNumber) => player.play('note$soundNumber.wav');

  Widget createButton(int soundNumber, Color color, {String text = ""}) {
    return Expanded(
      child: FlatButton(
        child: Text(text),
        onPressed: () => playSound(soundNumber),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(1, Colors.red, text: "C - Dó"),
              createButton(2, Colors.orange, text: "D - Ré"),
              createButton(3, Colors.yellowAccent, text: "E - Mi"),
              createButton(4, Colors.green, text: "F - Fá"),
              createButton(5, Colors.teal, text: "G - Sol"),
              createButton(6, Colors.blueAccent, text: "A - Lá"),
              createButton(7, Colors.deepPurple, text: "B - Si "),
            ],
          ),
        ),
      ),
    );
  }
}

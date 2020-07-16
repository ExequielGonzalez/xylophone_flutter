import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildButton({Color color, int soundNumber}) {
    List<Color> colors = [
      Colors.orange.shade800,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.red, soundNumber: 1),
              buildButton(color: Colors.orange, soundNumber: 2),
              buildButton(color: Colors.yellow, soundNumber: 3),
              buildButton(color: Colors.green, soundNumber: 4),
              buildButton(color: Colors.teal, soundNumber: 5),
              buildButton(color: Colors.blue, soundNumber: 6),
              buildButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

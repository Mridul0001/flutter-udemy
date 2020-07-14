import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey(Color color, int note) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
        child: Text('Click 1!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.blue, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.orange, 5),
              buildKey(Colors.teal, 6),
              buildKey(Colors.indigo, 7)
            ],
          ),
        ),
      ),
    );
  }
}

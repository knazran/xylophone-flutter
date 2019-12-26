import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildXylophoneKey({Color color, int keyNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNum);
        },
        child: Container(),
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
              buildXylophoneKey(color: Colors.red, keyNum: 1),
              buildXylophoneKey(color: Colors.orange, keyNum: 2),
              buildXylophoneKey(color: Colors.yellow, keyNum: 3),
              buildXylophoneKey(color: Colors.green, keyNum: 4),
              buildXylophoneKey(color: Colors.green.shade900, keyNum: 5),
              buildXylophoneKey(color: Colors.blue, keyNum: 6),
              buildXylophoneKey(color: Colors.purple, keyNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}

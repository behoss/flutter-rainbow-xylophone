import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(text,
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              fontSize: 32,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(125, 0, 0, 255),
                ),
              ],
            )),
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
              buildKey(
                  color: Colors.red, soundNumber: 1, text: 'I\'m beautiful'),
              buildKey(
                  color: Colors.orange,
                  soundNumber: 2,
                  text: 'I\'m knowledgable'),
              buildKey(
                  color: Colors.yellow, soundNumber: 3, text: 'I\'m happy'),
              buildKey(
                  color: Colors.green, soundNumber: 4, text: 'I\'m healthy'),
              buildKey(color: Colors.teal, soundNumber: 5, text: 'I\'m rich'),
              buildKey(color: Colors.blue, soundNumber: 6, text: 'I\'m smart'),
              buildKey(color: Colors.purple, soundNumber: 7, text: 'I\'m wise'),
            ],
          ),
        ),
      ),
    );
  }
}

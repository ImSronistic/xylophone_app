import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlay(int numberSound) {
    final player = AudioCache();
    player.play('note$numberSound.wav');
  }

  Expanded keyBuilder(int playNum, Color color) => Expanded(
        child: RaisedButton(
          child: null,
          color: color,
          onPressed: () {
            soundPlay(playNum);
          },
        ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            keyBuilder(1, Colors.red),
            keyBuilder(2, Colors.orange),
            keyBuilder(3, Colors.yellow),
            keyBuilder(4, Colors.greenAccent),
            keyBuilder(5, Colors.green),
            keyBuilder(6, Colors.blue),
            keyBuilder(7, Colors.purple),
          ]),
        ),
      ));
}

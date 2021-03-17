import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Center(
                child: TextButton(
              child: Text('Click Me!'),
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
            )),
          ),
        ));
  }
}

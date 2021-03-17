import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

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
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note1.wav');
                  },
                  child: Text('Click Here!')),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Text(
          nouns.last,
          style: TextStyle(
            fontSize: 40,
          ),
        )),
      ),
    );
  }
}

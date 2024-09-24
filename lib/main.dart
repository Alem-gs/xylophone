import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> soundPlay(int noteNumber) {
    final player = AudioPlayer();
    return player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildWidget(Color name, int noteNumber) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: name,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          onPressed: () {
            soundPlay(noteNumber);
          },
          child: const Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildWidget(Colors.red, 1),
            buildWidget(Colors.brown, 2),
            buildWidget(Colors.yellow, 3),
            buildWidget(Colors.green, 4),
            buildWidget(Colors.grey, 5),
            buildWidget(Colors.blue, 6),
            buildWidget(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(String name) {
    final player = AudioPlayer();
    player.play(
      AssetSource(name),
    );
  }

  Expanded buildKey({required Color color, required String filename}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        onPressed: () {
          playSound(filename);
        },
        child: Container(
          color: color,
        ),
      ),
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
              buildKey(color: Colors.red, filename: 'note1.wav'),
              buildKey(color: Colors.orange, filename: 'note2.wav'),
              buildKey(color: Colors.yellow, filename: 'note3.wav'),
              buildKey(color: Colors.green, filename: 'note4.wav'),
              buildKey(color: Colors.greenAccent, filename: 'note5.wav'),
              buildKey(color: Colors.blue, filename: 'note6.wav'),
              buildKey(color: Colors.purple, filename: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}

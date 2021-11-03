import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void playSound(int soundNumber) {
    player.setAsset('note$soundNumber.wav');
    player.play();
  }

  Expanded buildKey({color, nSound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(nSound);
        },
        child: const Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, nSound: 1),
            buildKey(color: Colors.orange, nSound: 2),
            buildKey(color: Colors.yellow, nSound: 3),
            buildKey(color: Colors.green, nSound: 4),
            buildKey(color: Colors.teal, nSound: 5),
            buildKey(color: Colors.blue, nSound: 6),
            buildKey(color: Colors.purple, nSound: 7),
          ],
        ),
      ),
    );
  }
}

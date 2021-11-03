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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            FlatButton(
              color: Colors.red,
              onPressed: () {
                playSound(1);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
            FlatButton(
              color: Colors.orange,
              onPressed: () {
                playSound(2);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
            FlatButton(
              color: Colors.yellow,
              onPressed: () {
                playSound(3);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
            FlatButton(
              color: Colors.green,
              onPressed: () {
                playSound(4);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
            FlatButton(
              color: Colors.teal,
              onPressed: () {
                playSound(5);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                playSound(6);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
            FlatButton(
              color: Colors.purple,
              onPressed: () {
                playSound(7);
              },
              child: const Text(' '),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
